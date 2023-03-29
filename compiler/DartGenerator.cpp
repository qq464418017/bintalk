#include "Options.h"
#include "Context.h"
#include "CodeFile.h"

#include "CodeGenerator.h"

using namespace std;
DECLARE_CG(DartGenerator, dart);



static void generateEnum(CodeFile& f, Enum* e)
{
	f.output("enum %s {", e->getNameC());
	f.indent();
	for (size_t i = 0; i < e->items_.size(); i++)
	{
		f.output("%s,", e->items_[i].c_str());
	}
	f.recover();
	f.output("}");
	f.output("");
}

static const char* getFieldTypeName(Field& f)
{
    switch (f.type_)
    {
        case Field::FT_INT64:	return "int";
        case Field::FT_UINT64:  return "int";
        case Field::FT_DOUBLE:  return "double";
        case Field::FT_FLOAT:	return "double";
        case Field::FT_INT32:	return "int";
        case Field::FT_UINT32:  return "int";
        case Field::FT_INT16:	return "int";
        case Field::FT_UINT16:  return "int";
        case Field::FT_INT8:	return "int";
        case Field::FT_UINT8:	return "int";
        case Field::FT_BOOL:	return "bool";
        case Field::FT_STRING:	return "String";
        // case Field::FT_ENUM:	return "enum";
        case Field::FT_ENUM:	return f.userType_->getNameC();
        case Field::FT_BINARY:	return "List<int>";
        case Field::FT_USER:	return f.userType_->getNameC();
    }
    return "";
}

static const char* getFieldTypeValue(Field& f)
{
    switch (f.type_)
    {
        case Field::FT_INT64:	return "0";
        case Field::FT_UINT64:  return "0";
        case Field::FT_DOUBLE:  return "0";
        case Field::FT_FLOAT:	return "0";
        case Field::FT_INT32:	return "0";
        case Field::FT_UINT32:  return "0";
        case Field::FT_INT16:	return "0";
        case Field::FT_UINT16:  return "0";
        case Field::FT_INT8:	return "0";
        case Field::FT_UINT8:	return "0";
        case Field::FT_BOOL:	return "false";
        case Field::FT_STRING:	return "\"\"";
        case Field::FT_ENUM:	return f.userType_->getEnum()->items_[0].c_str();
        case Field::FT_BINARY:	return "List<int>().empty(growable: true);";
        case Field::FT_USER:	return f.userType_->getNameC();
    }
    return "";
}


static const char* getFieldUpperTypeName(Field& f)
{
    switch (f.type_)
    {
        case Field::FT_INT64: return "Int64";
        case Field::FT_UINT64: return "Uint64";
        case Field::FT_DOUBLE: return "Double";
        case Field::FT_FLOAT: return "Float";
        case Field::FT_INT32: return "Int32";
        case Field::FT_UINT32: return "Uint32";
        case Field::FT_INT16: return "Int16";
        case Field::FT_UINT16: return "Uint16";
        case Field::FT_INT8: return "Int8";
        case Field::FT_UINT8: return "Uint8";
        case Field::FT_BOOL: return "Bool";
        case Field::FT_STRING: return "String";
        case Field::FT_BINARY: return "ByteArray";
        case Field::FT_USER: return f.userType_->getNameC();
        case Field::FT_ENUM: return "Uint8";
    }
    return NULL;
}

static void generateFieldContainerSCode(CodeFile& f, FieldContainer* fc)
{
    for (size_t i = 0; i < fc->fields_.size(); i++)
    {
        Field& field = fc->fields_[i];
        if (field.type_ == Field::FT_USER)
        {
            if (field.isArray())
            {
                f.output("pw.writeSize(%s.length);", field.getNameC());
                f.output("for (var i = 0; i < %s.length; i++){", field.getNameC());
                f.indent();
                f.output("pw.writeStruct(%s[i].serialize());", field.getNameC());
                f.recover();
                f.output("}");
            }
            else
            {
                f.output("pw.writeStruct(%s.serialize());", field.getNameC());
            }
        }
        else
        {
            if (field.isArray())
            {
                f.output("pw.writeSize(%s.length);", field.getNameC());
                f.output("for (var i = 0; i < %s.length; i++){", field.getNameC());
                f.indent();
                f.output("pw.write%s(%s[i]);", getFieldUpperTypeName(field), field.getNameC());
                f.recover();
                f.output("}");
            }
            else if (field.type_ == Field::FT_ENUM)
            {
                f.output("pw.write%s(this.%s.index);", getFieldUpperTypeName(field), field.getNameC());
            }
            else
            {
                f.output("pw.write%s(this.%s);", getFieldUpperTypeName(field), field.getNameC());
            }
        }
    }
}

static void generateFieldContainerDSCode(CodeFile& f, FieldContainer* fc)
{
    for (size_t i = 0; i < fc->fields_.size(); i++)
    {
        Field& field = fc->fields_[i];
        if (field.type_ == Field::FT_USER)
        {
            if (field.isArray())
            {
                f.output("int size_%d = pb.readSize();", i);
                // f.output("%s = List<%s>.empty(growable: true);", field.getNameC(), getFieldTypeName(field));
                f.output("for (int i = 0; i < size_%d; i++) {", i);
                f.indent();
                f.output("var t = %s();", getFieldTypeName(field));
                f.output("var index_%d = t.deserializeStruct(pb.getIndex(), data);", i);
                f.output("pb.setIndex(index_%d);", i);
                f.output("%s.add(t);", field.getNameC());

                f.recover();
                f.output("}");
            }
            else
            {
                f.output("var index_%d = %s.deserializeStruct(pb.getIndex(), data);", i, field.getNameC());
                f.output("pb.setIndex(index_%d );", i);
            }
        }
        else
        {
            if (field.isArray())
            {
                f.output("int size_%d = pb.readSize();", i);
                // f.output("%s = List<%s>.empty(growable: true);", field.getNameC(), getFieldTypeName(field));
                f.output("for (int i = 0; i < size_%d; i++) {", i);
                f.indent();
                // f.output("var t = %s();", getFieldTypeName(field));
                // f.output("var index_%d = t.deserialize%s(pb.getIndex(), data);", i, );
                f.output("var t = pb.read%s();", getFieldUpperTypeName(field));
                f.output("%s.add(t);", field.getNameC());

                f.recover();
                f.output("}");
            }
            else if (field.type_ == Field::FT_ENUM)
            {
                f.output("this.%s = %s.values[pb.read%s()];", field.getNameC(), field.userType_->getNameC(), getFieldUpperTypeName(field));
            }
            else
            {
                f.output("this.%s = pb.read%s();", field.getNameC(), getFieldUpperTypeName(field));
            }
        }
    }
}


static void generateFieldContainerStructCode(CodeFile& f, FieldContainer* fc)
{
    for (size_t i = 0; i < fc->fields_.size(); i++)
    {
        Field& field = fc->fields_[i];
        const char* s = getFieldTypeName(field);
        // f.output("var %s;",  field.getNameC());
        if (field.type_ == Field::FT_USER)
        {
            if (field.isArray())
            {
                f.output("List<%s> %s = List<%s>.empty(growable: true);", getFieldTypeName(field), field.getNameC(), getFieldTypeName(field));
            }
            else
            {
                if (field.type_ == Field::FT_ENUM)
                {
                    f.output("%s %s = %s.%s;", getFieldTypeName(field), field.getNameC(), getFieldTypeName(field), getFieldTypeValue(field));
                }
                else if (field.type_ == Field::FT_USER)
                {
                    f.output("%s %s = %s();", getFieldTypeName(field), field.getNameC(), getFieldTypeValue(field));
                }
                else
                {
                    f.output("%s %s = %s;", getFieldTypeName(field), field.getNameC(), getFieldTypeValue(field));
                }
                
            }
        }
        else
        {
            if (field.isArray())
            {
                f.output("List<%s> %s = List<%s>.empty(growable: true);", getFieldTypeName(field), field.getNameC(), getFieldTypeName(field));
            }
            else
            {
                if (field.type_ == Field::FT_ENUM)
                {
                    f.output("%s %s = %s.%s;", getFieldTypeName(field), field.getNameC(), getFieldTypeName(field), getFieldTypeValue(field));
                }
                else
                {
                    f.output("%s %s = %s;", getFieldTypeName(field), field.getNameC(), getFieldTypeValue(field));
                }
                
            }
        }

    }
}

static void generateStruct(CodeFile& f, Struct* s)
{
    f.output("class %s implements IBintalk {", s->getNameC());
    f.indent();
    generateFieldContainerStructCode(f, s);

    f.output("");
    f.output("@override");
    f.output("Uint8List serialize(){");
    f.indent();
    f.output("var pw = ProtocolWriter();");

    generateFieldContainerSCode(f, s);
    f.output("return pw.getBytes();");
    f.recover();

    f.output("}");
    f.output("");
    f.output("int deserializeStruct(int start, Uint8List data){");
    f.indent();
    f.output("var pb = ProtocolReader(start, data.buffer);");
    //f.output("local v = {}");
    generateFieldContainerDSCode(f, s);
    f.output("return pb.getIndex();");
    //f.output("return v, p");
    f.recover();
    f.output("}");
    f.output("");
    f.output("@override");
    f.output("void deserialize(Uint8List data) {");
    f.indent();
    f.output("deserializeStruct(0, data);");
    f.recover();
    f.output("}");
    f.recover();
     f.output("}");
    f.output("");
    f.output("");
}

void DartGenerator :: generate()
{
    std::string fn = gOptions.output_ + gOptions.inputFS_ + ".dart";
    CodeFile f(fn);
    f.output("import 'dart:typed_data';");
    f.output("import 'package:%s/bintalk/i_bintalk.dart';", gOptions.dartPackagePath_.c_str());
    f.output("import 'package:%s/bintalk/protocol_reader.dart';", gOptions.dartPackagePath_.c_str());
    f.output("import 'package:%s/bintalk/protocol_writer.dart';", gOptions.dartPackagePath_.c_str());
    if (gOptions.inputFS_ != "common")
    {
        f.output("import 'package:%s/proto/common.dart';", gOptions.dartPackagePath_.c_str());
    }
    f.output("");


    for (size_t i = 0; i < gContext.definitions_.size(); i++)
    {
        Definition* definition = gContext.definitions_[i];
        if (definition->file_ != gOptions.inputFN_)
            continue;
        if (definition->getEnum())
            generateEnum(f, definition->getEnum());
        else if (definition->getStruct())
            generateStruct(f, definition->getStruct());
    }
}

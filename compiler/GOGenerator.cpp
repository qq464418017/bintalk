#include "Options.h"
#include "Context.h"
#include "CodeFile.h"

#include "CodeGenerator.h"

using namespace std;
DECLARE_CG(GOGenerator, go);

static bool  IsContainsStr(string str, string contains_str)
{
	string::size_type idx = str.find(contains_str);
	if (idx != string::npos)
	{
		return true;
	}
	else
	{
		return false;
	}
}

static const string ChangeName(string s)
{
	s[0] &= 0xDF;
	return s;
}


static void generateEnum(CodeFile& f, Enum* e)
{

	//f.output("%s =", e->getNameC());
	f.output("const(");
	f.indent();
	for (size_t i = 0; i < e->items_.size(); i++)
	{
		/*string s = e->items_[i].c_str();
		char ch[100];
		strcpy(ch,s.c_str());
		ch[0] &= 0xDF;*/
		if (i == 0)
			f.output("%s_%s = iota", ChangeName(e->getNameC()).c_str(), e->items_[i].c_str());
		else
			f.output("%s_%s", ChangeName(e->getNameC()).c_str(), e->items_[i].c_str());
	}
	f.recover();
	f.output(")");
	f.output("");
}

static const char* getFieldTypeName(Field& f)
{
	switch (f.type_)
	{
	case Field::FT_INT64:	return "int64";
	case Field::FT_UINT64:  return "uint64";
	case Field::FT_DOUBLE:  return "float64";
	case Field::FT_FLOAT:	return "float32";
	case Field::FT_INT32:	return "int32";
	case Field::FT_UINT32:  return "uint32";
	case Field::FT_INT16:	return "int16";
	case Field::FT_UINT16:  return "uint16";
	case Field::FT_INT8:	return "int8";
	case Field::FT_UINT8:	return "uint8";
	case Field::FT_BOOL:	return "bool";
	case Field::FT_STRING:	return "string";
	case Field::FT_ENUM:	return "uint8";
	case Field::FT_BINARY:	return "[]byte";
	case Field::FT_USER:	return f.userType_->getNameC();
	}
	return "";
}

static void generateFieldContainerSCode(CodeFile& f, FieldContainer* fc)
{
	for (size_t i = 0; i < fc->fields_.size(); i++)
	{
		Field& field = fc->fields_[i];
		/*if (field.isArray())
		f.output("BTK_Writer.type_array(BTK_Writer.type_%s, v.%s, b)", getFieldTypeName(field), field.getNameC());
		else
		f.output("BTK_Writer.type_%s(v.%s, b)", getFieldTypeName(field), field.getNameC());*/
		if (field.type_ == Field::FT_USER)
		{
			if (field.isArray())
			{
				f.output("pw.WriteDynSize(len(t.%s))", ChangeName(field.getNameC()).c_str());
				f.output("for _, v := range t.%s {", ChangeName(field.getNameC()).c_str());
				f.indent();
				f.output("pw.Write(v.Serialize())");
				f.recover();
				f.output("}");
			}
			else
			{
				//f.output("pw.Write(t.%s.Serialize())",ChangeName(field.getNameC()));
				f.output("pw.Write(t.%s.Serialize())", ChangeName(field.getNameC()).c_str());
				//f.output("pw.WriteData(t.%s.Serialize())", ChangeName(field.getNameC()).c_str());
			}
		}
		else
			f.output("pw.WriteData(t.%s)", ChangeName(field.getNameC()).c_str());
	}
}
static void generateFieldContainerDSCode(CodeFile& f, FieldContainer* fc)
{
	for (size_t i = 0; i < fc->fields_.size(); i++)
	{
		Field& field = fc->fields_[i];
		/*if (field.isArray())
		f.output("v.%s, p = BTK_Reader.type_array(b, p, BTK_Reader.type_%s, 0X%X, 0X%X)", field.getNameC(), getFieldTypeName(field), field.maxArray_, field.maxValue_);
		else
		f.output("v.%s, p = BTK_Reader.type_%s(b, p, 0X%X)", field.getNameC(), getFieldTypeName(field), field.maxValue_);*/
		if (field.type_ == Field::FT_USER)
		{
			if (field.isArray())
			{
				//string v = "s";
				f.output("var s%d int", i);
				f.output("btk.ReadDynSize(buf,startid,&s%d)", i);
				f.output("if s%d < len(buf) {", i);
				f.indent();
				// if (field.type_ == Field::FT_USER)
				// {
					f.output("t.%s = make([]*%s,s%d)", ChangeName(field.getNameC()).c_str(), ChangeName(getFieldTypeName(field)).c_str(), i);
					f.output("for i := 0; i < s%d; i++ {", i);
					f.indent();
					f.output("a := new(%s)", ChangeName(getFieldTypeName(field)).c_str());
					f.output("a.DeserializeStruct(buf,startid)");
					f.output("t.%s[i] = a", ChangeName(field.getNameC()).c_str());
				// }
				// else
				// {
				// 	f.output("t.%s = make([]%s,s%d)", ChangeName(field.getNameC()).c_str(), ChangeName(getFieldTypeName(field)).c_str(), i);
				// 	f.output("for i := 0; i < s%d; i++ {", i);
				// 	f.indent();
				// 	f.output("a := new(%s)", ChangeName(getFieldTypeName(field)).c_str());
				// 	f.output("a.DeserializeStruct(buf,startid)");
				// 	f.output("t.%s[i] = *a", ChangeName(field.getNameC()).c_str());
				// }
				
				f.recover();
				f.output("}");
				f.recover();
				f.output("}");
			}
			else
			{
				f.output("t.%s.DeserializeStruct(buf,startid)", ChangeName(field.getNameC()).c_str());
			}
		}
		else
			f.output("btk.Read(buf,startid,&t.%s)", ChangeName(field.getNameC()).c_str());
	}
}

static void generateFieldContainerStructCode(CodeFile& f, FieldContainer* fc)
{
	for (size_t i = 0; i < fc->fields_.size(); i++)
	{
		Field& field = fc->fields_[i];
		const char* s = getFieldTypeName(field);
		if (field.type_ == Field::FT_USER)
		{
			if (field.isArray())
			{
				f.output("%s []*%s", ChangeName(field.getNameC()).c_str(), ChangeName(getFieldTypeName(field)).c_str());
			}
			else
			{
				f.output("%s %s", ChangeName(field.getNameC()).c_str(), ChangeName(getFieldTypeName(field)).c_str());
			}
		}
		else
		{
			if (field.isArray())
			{
				f.output("%s []%s", ChangeName(field.getNameC()).c_str(), getFieldTypeName(field));
			}
			else
			{
				f.output("%s %s", ChangeName(field.getNameC()).c_str(), getFieldTypeName(field));
			}
		}

	}
}

static void generateStruct(CodeFile& f, Struct* s)
{
	f.output("type %s struct{", ChangeName(s->getNameC()).c_str());
	f.indent();
	generateFieldContainerStructCode(f, s);
	f.recover();
	f.output("}");
	f.output("");
	f.output("func (t *%s) Serialize()[]byte{", ChangeName(s->getNameC()).c_str());
	f.indent();
	f.output("pw:= btk.ProtocolWriter{Bytes:make([]byte,0)}");

	generateFieldContainerSCode(f, s);
	f.output("return pw.Bytes");
	f.recover();

	f.output("}");
	f.output("");
	f.output("func (t *%s) DeserializeStruct(buf []byte, startid *int){", ChangeName(s->getNameC()).c_str());
	f.indent();
	//f.output("local v = {}");
	generateFieldContainerDSCode(f, s);
	//f.output("return v, p");
	f.recover();
	f.output("}");
	f.output("");
	f.output("func (t *%s) Deserialize(buf []byte){", ChangeName(s->getNameC()).c_str());
	f.indent();
	f.output("startid := 0");
	f.output("t.DeserializeStruct(buf, &startid)");
	f.recover();
	f.output("}");
	f.output("");
	f.output("");
}

void GOGenerator::generate()
{
	std::string fn = gOptions.output_ + gOptions.inputFS_ + ".go";
	CodeFile f(fn);
	/*f.output("require(\"bintalk.protocol_reader\")");
	f.output("require(\"bintalk.protocol_writer\")");*/
	f.output("package bintalk");
	f.output("");
	if (gOptions.inputFS_.find("Enum") == string::npos)
	{
		f.output("import \"%s\"", gOptions.goPackagePath_.c_str());
	}
	f.output("");
	/*for (std::set<std::string>::iterator iter = gContext.imported_.begin();
	iter != gContext.imported_.end(); ++iter)
	{
	std::string incFilename = *iter;
	incFilename = incFilename.substr(0, incFilename.find('.'));
	f.output("require(\"%s\")", incFilename.c_str());
	}*/
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
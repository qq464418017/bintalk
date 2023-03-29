#include "Options.h"
#include "Context.h"
#include "CodeFile.h"

#include "CodeGenerator.h"
using namespace std;

DECLARE_CG(JAVAGenerator, java);


static const string getAtom(string s)
{
	s[0] &= 0xDF;
	return s;
}


static const string ChangeName(string s)
{
	for (unsigned i = 0; i < s.length(); i++)
	{
		if ((s[i] >= 'a') && (s[i] <= 'z'))
		{
			s[i] &= 0xDF;
		}
	}
	return s;
}

static void generateEnum(CodeFile& f, Enum* e)
{
	f.output("");
	f.output("public enum %s {", e->getNameC());
	f.indent();
	for (size_t i = 0; i < e->items_.size() - 1; i++)
	{
		f.output("%s,", ChangeName(e->items_[i].c_str()).c_str());
		
	}
	f.output("%s;", ChangeName(e->items_[e->items_.size() - 1].c_str()).c_str());
	f.output("");
	for (size_t i = 0; i < e->items_.size(); i++)
	{
		f.output("public static final int %s_VALUE = %d;", ChangeName(e->items_[i].c_str()).c_str(),i);

	}
	f.recover("}");
}

static const char* getFieldInnerTypeName(Field& f)
{
	switch (f.type_)
	{
	case Field::FT_INT64: return "long";
	case Field::FT_UINT64: return "long";
	case Field::FT_DOUBLE: return "double";
	case Field::FT_FLOAT: return "float";
	case Field::FT_INT32: return "int";
	case Field::FT_UINT32: return "long";
	case Field::FT_INT16: return "short";
	case Field::FT_UINT16: return "int";
	case Field::FT_INT8: return "byte";
	case Field::FT_UINT8: return "short";
	case Field::FT_BOOL: return "boolean";
	case Field::FT_STRING: return "String";
	case Field::FT_BINARY: return "byte[]";
	case Field::FT_USER:
	case Field::FT_ENUM: return f.userType_->getNameC();
	}
	return NULL;
}

static const char* getListFieldInnerTypeName(Field& f)
{
	switch (f.type_)
	{
	case Field::FT_INT64: return "Long";
	case Field::FT_UINT64: return "Long";
	case Field::FT_DOUBLE: return "Double";
	case Field::FT_FLOAT: return "Float";
	case Field::FT_INT32: return "Integer";
	case Field::FT_UINT32: return "Long";
	case Field::FT_INT16: return "Short";
	case Field::FT_UINT16: return "Integer";
	case Field::FT_INT8: return "Byte";
	case Field::FT_UINT8: return "Short";
	case Field::FT_BOOL: return "Boolean";
	case Field::FT_STRING: return "String";
	case Field::FT_BINARY: return "byte[]";
	case Field::FT_USER:
	case Field::FT_ENUM: return f.userType_->getNameC();
	}
	return NULL;
}

static const char* getFieldUpperTypeName(Field& f)
{
	switch (f.type_)
	{
	case Field::FT_INT64: return "Long";
	case Field::FT_UINT64: return "UnsignedLong";
	case Field::FT_DOUBLE: return "Double";
	case Field::FT_FLOAT: return "Float";
	case Field::FT_INT32: return "Int";
	case Field::FT_UINT32: return "UnsignedInt";
	case Field::FT_INT16: return "Short";
	case Field::FT_UINT16: return "UnsignedShort";
	case Field::FT_INT8: return "Byte";
	case Field::FT_UINT8: return "UnsignedByte";
	case Field::FT_BOOL: return "Boolean";
	case Field::FT_STRING: return "String";
	case Field::FT_BINARY: return "ByteArray";
	case Field::FT_USER:
	case Field::FT_ENUM: return f.userType_->getNameC();
	}
	return NULL;
}

static void getFieldTypeName(Field& f, std::string& name)
{
	name = getFieldInnerTypeName(f);
	if (f.isArray())
	{
		if (f.type_ == Field::FT_USER)
		{
			string s = getAtom(name);
			name = "List<" + s + ">";
		}
		else
		{
			name = getListFieldInnerTypeName(f);
			name = "List<" + name + ">";
		}
		
	}

}

static void getNormalFieldTypeName(Field& f, std::string& name)
{
	name = getFieldInnerTypeName(f);
}

static void getFieldInnerDefault(Field& f, std::string& name)
{
	switch (f.type_)
	{
	case Field::FT_INT64:
	case Field::FT_UINT64:
	case Field::FT_DOUBLE:
	case Field::FT_FLOAT:
	case Field::FT_INT32:
	case Field::FT_UINT32:
	case Field::FT_INT16:
	case Field::FT_UINT16:
	case Field::FT_INT8:
	case Field::FT_UINT8: name = "0"; break;
	case Field::FT_BOOL: name = "false"; break;
	case Field::FT_STRING: name = "\"\""; break;
	case Field::FT_BINARY: name = "new byte[0]"; break;
	case Field::FT_USER: name = "new "; 
		name += getAtom(f.userType_->name_);
		name += "()"; break;
	case Field::FT_ENUM: name = f.userType_->name_ + ".values()[0]"; break;
	}
}

static void getArrayListFieldDefault(Field& f, std::string& name)
{
	name = getFieldInnerTypeName(f);
	if (f.isArray())
	{
		if (f.type_ == Field::FT_ENUM) {
			name = "ArrayList<" + name + ">";
		}
		else {
			string s = getAtom(name);
			name = "ArrayList<" + s + ">";
		}
		
	}
}

static void getFieldDefault(Field& f, std::string& name)
{
	if (f.isArray())
	{
		name = "new ";
		std::string tn;
		getArrayListFieldDefault(f, tn);
		name += tn;
		name += "()";
	}
	else
	{
		getFieldInnerDefault(f, name);
	}
}

static void generateFieldSCode(CodeFile& f, Field& field)
{
	if (field.isArray())
	{
		if (field.type_ == Field::FT_ENUM)
		{
			if (field.userType_->getEnum()->isEnum16())
				f.output("ProtocolWriter.writeArrayList(ws, ProtocolWriter::writeUnsignedShortEnum, this.%s);", field.getNameC());
			else
				f.output("ProtocolWriter.writeArrayList(ws, ProtocolWriter::writeUnsignedByteEnum, this.%s);", field.getNameC());
		}
		else if (field.type_ == Field::FT_USER)
		{
			f.output("ProtocolWriter.writeArrayList(ws, ProtocolWriter::writeStruct, this.%s);", field.getNameC());
		}
		else
			f.output("ProtocolWriter.writeArrayList(ws, ProtocolWriter::write%s, this.%s);", getFieldUpperTypeName(field), field.getNameC());
	}
	else
	{
		if (field.type_ == Field::FT_ENUM)
		{
			if (field.userType_->getEnum()->isEnum16())
				f.output("ProtocolWriter.writeUnsignedShortEnum(ws, this.%s);", field.getNameC());
			else
				f.output("ProtocolWriter.writeUnsignedByteEnum(ws, this.%s);", field.getNameC());
		}
		else if (field.type_ == Field::FT_USER)
		{
			f.output("ProtocolWriter.writeStruct(ws, this.%s);", field.getNameC());
		}
		else
			f.output("ProtocolWriter.write%s(ws, this.%s);", getFieldUpperTypeName(field), field.getNameC());
	}
}

static void generateFieldContainerSCode(CodeFile& f, FieldContainer* fc)
{
	for (size_t i = 0; i < fc->fields_.size(); i++)
		generateFieldSCode(f, fc->fields_[i]);
}



static void generateFieldDSCode(CodeFile& f, Field& field)
{
	if (field.isArray())
	{
		if (field.type_ == Field::FT_ENUM)
		{
			if (field.userType_->getEnum()->isEnum16())
				f.output("ProtocolReader.readArrayList(rs, ProtocolReader::readUnsignedShort).forEach(e -> this.%s.add(EnumName16.values()[e]));", field.getNameC());
			else
				f.output("ProtocolReader.readArrayList(rs, ProtocolReader::readUnsignedByte).forEach(e -> this.%s.add(EnumName.values()[e]));", field.getNameC());
		}
		else if (field.type_ == Field::FT_USER)
		{
			std::string tn;
			getNormalFieldTypeName(field, tn);
			f.output("this.%s = ProtocolReader.readStructArrayList(rs, %s.class);", field.getNameC(),getAtom(tn).c_str());
		}
		else
			f.output("this.%s = ProtocolReader.readArrayList(rs, ProtocolReader::read%s);", field.getNameC(), getFieldUpperTypeName(field));
	}
	else
	{
		if (field.type_ == Field::FT_ENUM)
		{
			if (field.userType_->getEnum()->isEnum16())
				f.output("this.%s = EnumName16.values()[ProtocolReader.readUnsignedShort(rs)];", field.getNameC(),field.userType_->name_.c_str());
			else
				f.output("this.%s = %s.values()[ProtocolReader.readUnsignedByte(rs)];", field.getNameC(),field.userType_->name_.c_str());
		}
		else if (field.type_ == Field::FT_USER)
		{
			std::string tn;
			getNormalFieldTypeName(field, tn);
			f.output("this.%s = ProtocolReader.readStruct(rs, %s.class);", field.getNameC(),getAtom(tn).c_str());
		}
		else
			f.output("this.%s = ProtocolReader.read%s(rs);", field.getNameC(), getFieldUpperTypeName(field));
	}
}

static void generateFieldContainerDSCode(CodeFile& f, FieldContainer* fc)
{
	for (size_t i = 0; i < fc->fields_.size(); i++)
		generateFieldDSCode(f, fc->fields_[i]);
}




static void generateStruct(CodeFile& f, Struct* s)
{
	f.output("");
	f.output("public static class %s implements IBinTalk {", getAtom(s->getNameC()).c_str());
	f.indent();
	// fields.
	for (size_t i = 0; i < s->fields_.size(); i++)
	{
		Field& field = s->fields_[i];
		std::string tn;
		getFieldTypeName(field, tn);
		std::string dft;
		getFieldDefault(field, dft);
		if (field.type_ == field.FT_USER)
		{
			if (field.type_ == field.FT_ENUM)
				f.output("private %s %s = %s;", tn.c_str(), field.getNameC(), dft.c_str());
			/*else if (field.isArray())
				f.output("private Lsit<%s> %s = new ArrayList<%s>();", getAtom(tn).c_str(), field.getNameC(), getAtom(tn).c_str());*/
			else
				f.output("private %s %s = %s;", getAtom(tn).c_str(), field.getNameC(), dft.c_str());
		}
		else
		{
			/*if (field.isArray())
				f.output("private Lsit<%s> %s = new ArrayList<%s>();", tn.c_str(), field.getNameC(), tn.c_str());
			else*/
				f.output("private %s %s = %s;", tn.c_str(), field.getNameC(), dft.c_str());
		}
	}

	for (size_t i = 0; i < s->fields_.size(); i++)
	{
		Field& field = s->fields_[i];
		std::string tn;
		getFieldTypeName(field, tn);
		std::string dft;
		getFieldDefault(field, dft);
		f.output("");
		
		/*if (field.isArray())
		{
			f.output("public void set%s(%s %s) {", getAtom(field.getNameC()).c_str(), dft.c_str(), field.getNameC());
		}
		else
		{*/
			if (field.type_ == field.FT_USER)
			{
				if (field.type_ == field.FT_ENUM)
					f.output("public void set%s(%s %s) {", getAtom(field.getNameC()).c_str(), tn.c_str(), field.getNameC());
				else
					f.output("public void set%s(%s %s) {", getAtom(field.getNameC()).c_str(), getAtom(tn).c_str(), field.getNameC());
			}
			else
				f.output("public void set%s(%s %s) {", getAtom(field.getNameC()).c_str(), tn.c_str(), field.getNameC());;
		//}
		
		f.indent();
		f.output("this.%s = %s;", field.getNameC(), field.getNameC());
		f.recover();
		f.output("}");
		f.output("");
		/*if (field.isArray())
		{
			f.output("public %s get%s() {", dft.c_str(), getAtom(field.getNameC()).c_str());
		}
		else
		{*/
			if (field.type_ == field.FT_USER)
			{
				if (field.type_ == field.FT_ENUM)
					f.output("public %s get%s() {", tn.c_str(), getAtom(field.getNameC()).c_str());
				else
					f.output("public %s get%s() {", getAtom(tn).c_str(), getAtom(field.getNameC()).c_str());
			}
			else
				f.output("public %s get%s() {", tn.c_str(), getAtom(field.getNameC()).c_str());
		//}
		

		f.indent();
		f.output("return this.%s;", field.getNameC());
		f.recover();
		f.output("}");
	}
	// serialize code.
	f.output("");
	f.output("@Override");
	f.output("public byte[] serialize(WriterStream... args){");
	f.indent();
	f.output("WriterStream ws;");
	f.output("if (args != null && args.length == 1) {");
	f.indent();
	f.output("ws = args[0];");
	f.recover("} else {");
	f.indent();
	f.output("ws = new WriterStream();");
	f.recover("}");
	generateFieldContainerSCode(f, s);
	f.output("return ws.toByteArray();");
	f.recover("}");
	// deserialize code.
	f.output("");
	f.output("@Override");
	f.output("public %s deserialize(ReaderStream rs){", getAtom(s->getNameC()).c_str());
	f.indent();
	generateFieldContainerDSCode(f, s);
	f.output("return this;");
	f.recover("}");
	f.recover("}");
}


void JAVAGenerator::generate()
{
	std::string fn = gOptions.output_ + getAtom(gOptions.inputFS_) + ".java";
	CodeFile f(fn);
	f.output("package %s;",gOptions.javaPackagePath_.c_str());
	f.output("");
	f.output("import com.admin.bintalk.BinTalkUtil.ReaderStream;");
	f.output("import com.admin.bintalk.BinTalkUtil.WriterStream;");
	f.output("import com.admin.bintalk.IBinTalk;");
	f.output("import com.admin.bintalk.ProtocolReader;");
	f.output("import com.admin.bintalk.ProtocolWriter;");
	f.output("");
	for (std::set<std::string>::iterator iter = gContext.imported_.begin();
		iter != gContext.imported_.end(); ++iter)
	{
		std::string incFilename = *iter;
		incFilename = incFilename.substr(0, incFilename.find('.'));
		f.output("import %s.%s.*;", gOptions.javaPackagePath_.c_str(),getAtom(incFilename).c_str());
	}
	f.output("import java.util.ArrayList;");
	f.output("import java.util.List;");
	f.output("");
	f.output("public class %s {",getAtom(gContext.curFilename_.substr(0,gContext.curFilename_.length() - 4)).c_str());
	f.indent();
	for (size_t i = 0; i < gContext.definitions_.size(); i++)
	{
		Definition* definition = gContext.definitions_[i];
		if (definition->file_ != gOptions.inputFN_)
			continue;
		if (definition->getEnum())
		{
			generateEnum(f, definition->getEnum());
		}
		else if (definition->getStruct())
		{
			generateStruct(f, definition->getStruct());
		}
	}
	f.recover("}");
}

import 'dart:convert';
import 'dart:typed_data';

class ProtocolWriter
{
  var bytesBuilder;

  ProtocolWriter(){
    bytesBuilder = BytesBuilder();
  }

  //uint8
  void writeUint8(int value) {
    var b = ByteData(1);
    b.setUint8(0, value);
    _write(b);
  }

  //int8
  void writeInt8(int value) {
    var b = ByteData(1);
    b.setInt8(0, value);
    _write(b);
  }

  //uint16
  void writeUint16(int value){
    var b = ByteData(2);
    b.setUint16(0, value, Endian.little);
    _write(b);
  }

  //int16
  void writeInt16(int value){
    var b = ByteData(2);
    b.setInt16(0, value, Endian.little);
    _write(b);
  }

  //uint32
  void writeUint32(int value){
    var b = ByteData(4);
    b.setUint32(0, value, Endian.little);
    _write(b);
  }

  //int32
  void writeInt32(int value) {
    var b = ByteData(4);
    b.setInt32(0, value, Endian.little);
    _write(b);
  }

  //uint64
  void writeUint64(int value){
    var b = ByteData(8);
    b.setUint64(0, value, Endian.little);
    _write(b);
  }

  //uint64
  void writeInt64(int value){
    var b = ByteData(8);
    b.setInt64(0, value, Endian.little);
    _write(b);
  }

  //float
  void writeFloat(double value){
    var b = ByteData(4);
    b.setFloat32(0, value, Endian.little);
    _write(b);
  }

  //double
  void writeDouble(double value){
    var b = ByteData(8);
    b.setFloat64(0, value, Endian.little);
    _write(b);
  }

  //bool
  void writeBool(bool value){
    writeUint8(value ? 1 : 0);
  }
  
  //byte array
  void writeByteArray(List<int> value) {
    writeSize(value.length);
    for (var i = 0; i < value.length; i++) {
      writeUint8(value[i]);
    }
  }
  
  //string
  void writeString(String value){
    if (value == "" || value.length == 0) {
      writeSize(0);
    } else {
      var bytes = utf8.encode(value);
      writeByteArray(bytes);
    }
  }

  //struct
  void writeStruct(List<int> list){
    for (var i = 0; i < list.length; i++) {
      writeUint8(list[i]);
    }
  }


  void writeSize(int len){
    if (len <= 0x3F) {
      writeUint8(len & 0xFF);
    } else if (len <= 0x3FFF) {
      len |= 1 << 14;
      writeUint8((len >> 8) & 0xFF);
      writeUint8(len & 0xFF);
    } else if (len <= 0x3FFFFF) {
      len |= 2 << 22;
      writeUint8((len >> 16) & 0xFF);
      writeUint8((len >> 8) & 0xFF);
      writeUint8(len & 0xFF);
    } else if (len <= 0x3FFFFFFF) {
      len |= 3 << 30;
      writeUint8((len >> 24) & 0xFF);
      writeUint8((len >> 16) & 0xFF);
      writeUint8((len >> 8) & 0xFF);
      writeUint8(len & 0xFF);
    }
  }

  void _write(ByteData data)
  {
    bytesBuilder.add(data.buffer.asUint8List());
  }

  Uint8List getBytes(){
    return bytesBuilder.toBytes();
  }
}
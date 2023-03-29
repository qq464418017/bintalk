


import 'dart:convert';
import 'dart:typed_data';

class ProtocolReader {

  var _index = 0;
  var _byteData;
  ProtocolReader(int start, ByteBuffer bf){
    _index = start;
    _byteData = ByteData.view(bf);
  }

  int getIndex(){
    return _index;
  }

  void setIndex(int index) {
    _index = index;
  }

  //uint8
  int readUint8(){
    var value = _byteData.getUint8(_index);
    _index++;
    return value;
  }

  //int8
  int readInt8(){
    var value = _byteData.getInt8(_index);
    _index++;
    return value;
  }

  //uint16
  int readUint16(){
    var value = _byteData.getUint16(_index, Endian.little);
    _index += 2;
    return value;
  }

  //int16
  int readInt16(){
    var value = _byteData.getInt16(_index, Endian.little);
    _index += 2;
    return value;
  }

  //uint32
  int readUint32(){
    var value = _byteData.getUint32(_index, Endian.little);
    _index += 4;
    return value;
  }

  //int32
  int readInt32(){
    var value = _byteData.getInt32(_index, Endian.little);
    _index += 4;
    return value;
  }

  //uint64
  int readUint64(){
    var value = _byteData.getUint64(_index, Endian.little);
    _index += 8;
    return value;
  }

  //int64
  int readInt64(){
    var value = _byteData.getInt64(_index, Endian.little);
    _index += 8;
    return value;
  }

  //float
  double readFloat() {
    var value = _byteData.getFloat32(_index, Endian.little);
    _index += 4;
    return value;
  }

  //double
  double readDouble() {
    var value = _byteData.getFloat64(_index, Endian.little);
    _index += 8;
    return value;
  }

  //bool
  bool readBool() {
    return readUint8() == 1;
  }

  //bytes array
  List<int> readBytesArray() {
    var size = readSize();
    var data = List<int>.filled(0, 0, growable: true);
    for (var i = 0; i < size; i++){
      data.add(readUint8());
    }
    return data;
  }

  //String
  String readString(){
    var data = readBytesArray();
    return utf8.decode(data);
  }


  int readSize() {
    var b = readUint8() & 0xFF;
    var n = b >> 6;
    var size = b & 0x3F;
    while (n > 0){
      b = readUint8() & 0xFF;
      size = (size << 8) | b;
      n--;
    }
    return size;
  }

}


import 'dart:typed_data';

abstract class IBintalk
{
  Uint8List serialize();

  void deserialize(Uint8List data);
}
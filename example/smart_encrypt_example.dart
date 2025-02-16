import 'dart:typed_data';

import 'package:smart_encrypt/smart_encrypt.dart';

void main() {
  print(SmartEncrypt.getRandomNumbers(24));
  print(SmartEncrypt.getRandomString(30));
  print(SmartEncrypt.createDataHash256('Hello world'));
  
  String str = 'Hello world';
  Uint8List key = SmartEncrypt.createKey();
  Uint8List iv = SmartEncrypt.createIV();

 str = SmartEncrypt.encrypt(str, key, iv);
 print(str);
 print(SmartEncrypt.decrypt(str, key, iv));
}

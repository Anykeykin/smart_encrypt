import 'dart:io';
import 'dart:typed_data';

import 'package:smart_encrypt/smart_encrypt.dart';

void main() async {
  print(SmartEncrypt.getRandomNumbers(24));
  print(SmartEncrypt.getRandomString(30));
  print(SmartEncrypt.createDataHash256('Hello world'));

  String str = 'Hello world';
  Uint8List key = SmartEncrypt.createKey();
  Uint8List iv = SmartEncrypt.createIV();

  str = SmartEncrypt.encrypt(str, key, iv);
  print(str);
  print(SmartEncrypt.decrypt(str, key, iv));
  List<int> yourFileBites = await File('your file path').readAsBytes();
  print('encrypt start');
  List<int> encryptedFileBites =
      await SmartEncrypt.fastEncryptFile(yourFileBites, 250);
  print('encrypt end');
  await SmartEncrypt.fastDecryptFile(encryptedFileBites, 250)
      .then((value) => print('decrypted'));
}

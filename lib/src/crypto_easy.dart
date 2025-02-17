import 'package:encrypt/encrypt.dart';

class CryptoLight {
  static final _key = Key.fromUtf8('UDcXCFsh6pQxlV0CfPmBPVxyihvtu5g0');
  static final _iv = IV.fromLength(16);

  static String encrypt(String input) {
    final encrypter = Encrypter(AES(_key));
    final encrypted = encrypter.encrypt(input, iv: _iv);
    return encrypted.base64;
  }

  static String decrypt(String input) {
    final encrypter = Encrypter(AES(_key));
    final decrypted = encrypter.decrypt64(input, iv: _iv);
    return decrypted;
  }
}

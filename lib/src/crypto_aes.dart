import 'dart:convert';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';

class CryptoAes {
  static Uint8List generateAESKey() {
    final key = Key.fromSecureRandom(32);
    return key.bytes;
  }

  static Uint8List generateIV() {
    final iv = IV.fromSecureRandom(16);
    return iv.bytes;
  }

  static String encryptAES(String plainText, Uint8List key, Uint8List iv) {
    final encrypter = Encrypter(AES(Key(key), mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(plainText, iv: IV(iv));
    return base64.encode(encrypted.bytes);
  }

  static String decryptAES(String encrypted, Uint8List key, Uint8List iv) {
    final encrypter = Encrypter(AES(Key(key), mode: AESMode.cbc));
    final decrypted = encrypter.decrypt(Encrypted(base64.decode(encrypted)), iv: IV(iv));
    return decrypted;
  }
}
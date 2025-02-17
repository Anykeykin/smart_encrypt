import 'dart:isolate';
import 'dart:typed_data';
import 'package:smart_encrypt/src/crypto_aes.dart';
import 'package:smart_encrypt/src/crypto_easy.dart';
import 'package:smart_encrypt/src/crypto_files.dart';
import 'package:smart_encrypt/src/crypto_hash.dart';
import 'package:smart_encrypt/src/crypto_random.dart';

class SmartEncrypt {
  ///Method for generate random numbers of a given length
  static Uint8List getRandomNumbers(int length) {
    return CryptoRandom.generateBytes(length);
  }

  ///Method for generate random string of a given length
  static String getRandomString(int length) {
    return CryptoRandom.generateString(length);
  }

  static String createDataHash256(String data) {
    return CryptoHash.hashSHA256(data);
  }

  static Uint8List createKey() {
    return CryptoAes.generateAESKey();
  }

  static Uint8List createIV() {
    return CryptoAes.generateIV();
  }

  static String easyEncrypt(String data) {
    return CryptoLight.encrypt(data);
  }

  static String easyDecrypt(String data) {
    return CryptoLight.decrypt(data);
  }

  static String encrypt(String data, Uint8List key, Uint8List iv) {
    return CryptoAes.encryptAES(data, key, iv);
  }

  static String decrypt(String data, Uint8List key, Uint8List iv) {
    return CryptoAes.decryptAES(data, key, iv);
  }

  static String duplicatedDecrypt(String data, Uint8List key, Uint8List iv) {
    final String decryptedString = CryptoAes.decryptAES(data, key, iv);
    return CryptoAes.decryptAES(decryptedString, key, iv);
  }

  static String duplicatedEncrypt(String data, Uint8List key, Uint8List iv) {
    final String encryptedString = CryptoAes.encryptAES(data, key, iv);
    return CryptoAes.encryptAES(encryptedString, key, iv);
  }

  ///Method for fast encrypting all files bytes
  static Future<List<int>> fastEncryptFile(List<int> data, int shift) async {
    return await Isolate.run(() => CaesarCipher(shift: shift).caesar(data));
  }

  ///Method for fast decrypting all files bytes
  static Future<List<int>> fastDecryptFile(List<int> data, int shift) async {
    return await Isolate.run(
        () => CaesarCipher(shift: shift).caesarDecrypt(data));
  }
}

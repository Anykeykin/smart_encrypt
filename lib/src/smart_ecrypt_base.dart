import 'dart:typed_data';
import 'package:smart_encrypt/src/crypto_hash.dart';
import 'package:smart_encrypt/src/crypto_random.dart';

/// Checks if you are awesome. Spoiler: you are.
class SmartEncrypt {
  static Uint8List getRandomNumbers(int length) {
    return CryptoRandom.generateBytes(length);
  }

  static String getRandomString(int length) {
    return CryptoRandom.generateString(length);
  }

  static String createDataHash256(String data) {
    return CryptoHash.hashSHA256(data);
  }
}

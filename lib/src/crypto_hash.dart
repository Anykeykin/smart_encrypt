import 'dart:convert';
import 'package:crypto/crypto.dart';

class CryptoHash {
  static String hashSHA256(String data) {
    final bytes = utf8.encode(data);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
import 'dart:math';
import 'dart:typed_data';

class CryptoRandom {
  static Uint8List generateBytes(int length) {
    final random = Random.secure();
    final bytes = Uint8List(length);
    for (var i = 0; i < length; i++) {
      bytes[i] = random.nextInt(256);
    }
    return bytes;
  }

  static String generateString(int length) {
    final random = Random.secure();
    const availableChars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final result = StringBuffer();

    for (var i = 0; i < length; i++) {
      result.write(availableChars[random.nextInt(availableChars.length)]);
    }

    return result.toString();
  }
}

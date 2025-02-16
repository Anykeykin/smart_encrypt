
import 'dart:typed_data';

import 'package:smart_ecrypt/src/crypto_random.dart';

/// Checks if you are awesome. Spoiler: you are.
class SmartEncrypt {
  static Uint8List getRandomNumbers(int length){
    return CryptoRandom.generateBytes(length);
  }
}

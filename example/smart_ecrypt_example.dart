import 'package:smart_encrypt/smart_ecrypt.dart';

void main() {
  print(SmartEncrypt.getRandomNumbers(24));
  print(SmartEncrypt.getRandomString(30));
  print(SmartEncrypt.createDataHash256('Hello world'));
}

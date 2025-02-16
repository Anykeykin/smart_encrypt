import 'package:smart_encrypt/smart_encrypt.dart';

void main() {
  print(SmartEncrypt.getRandomNumbers(24));
  print(SmartEncrypt.getRandomString(30));
  print(SmartEncrypt.createDataHash256('Hello world'));
}

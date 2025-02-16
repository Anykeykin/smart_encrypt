# SmartEncrypt
smart_encrypt is a library for easy use of encryption tools

## Functional:
- Generating random numbers of a given length
- Generating random strings of a given length
- Generating hash256 from strings
- File bytes fast encrypt & decrypt
- Encrypt & Decrypt string dart

## API 📚
### Basic methods
getRandomNumbers(int length): Generate random numbers.

getRandomString(int length): Generating random strings.

createDataHash256(String data): Generating hash256 from strings.

createKey(): Create Aes key.

createIV(): Create IV.

encrypt(String data, Uint8List key, Uint8List iv): Encrypt data

decrypt(String data, Uint8List key, Uint8List iv): Decrypt data

fastEncryptFile(List data, int shift): Encrypt fileBytes

fastDecryptFile(List data, int shift): Decrypt fileBytes
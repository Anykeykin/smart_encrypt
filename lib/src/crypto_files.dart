class CaesarCipher {
  final int shift;

  CaesarCipher({required this.shift});

  List<int> caesar(List<int> fileBytes) {
    List<int> result = [];
    for (var i = 0; i < fileBytes.length; i++) {
      int char = fileBytes[i];
      if (i.isEven || i > 1000000) {
      } else {
        char = char + shift;
      }
      result.add(char);
    }

    return result;
  }

  List<int> caesarDecrypt(List<int> fileBytes) {
    List<int> result = [];

    for (var i = 0; i < fileBytes.length; i++) {
      int char = fileBytes[i];
      if (i.isEven || i > 1000000) {
      } else {
        char = char - shift;
      }
      result.add(char);
    }

    return result;
  }
}

class Steganography{
  
}

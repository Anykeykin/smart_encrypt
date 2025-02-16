class CaesarCipher {
  final int shift;

  CaesarCipher({required this.shift});

  List<int> caesar(List<int> fileBytes) {
    List<int> result = [];
    print(fileBytes.length);
    for (var i = 0; i < fileBytes.length; i++) {
      if (i.isEven || i > 1000000) continue;
      final char = fileBytes[i];
      final shiftedChar = char + shift;
      result.add(shiftedChar);
    }

    return result;
  }

  List<int> caesarDecrypt(List<int> fileBytes) {
    List<int> result = [];

    for (var i = 0; i < fileBytes.length; i++) {
      if (i.isEven || i > 1000000) continue;
      final char = fileBytes[i];
      final shiftedChar = char - shift;
      result.add(shiftedChar);
    }

    return result;
  }
}

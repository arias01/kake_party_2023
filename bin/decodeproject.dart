String decodeSecretMessage(String encodedMessage) {
  String reversedEncodedMessage = encodedMessage.split('').reversed.join('');
  List<int> asciiValues = reversedEncodedMessage.codeUnits;

  final actualAsciValues = <int>[];
  for (int i = 0; i < asciiValues.length; i++) {
    actualAsciValues.add(asciiValues[i] - 5);
  }
  String decodedMessage = String.fromCharCodes(actualAsciValues);

  return decodedMessage;
}

void main() {
  String encodedMessage = '8757%TLSNRTI%TYSFX%YXJK[JI%YF%^YWFU%JPFP%JMY%SNTO';
  String decodedMessage = decodeSecretMessage(encodedMessage);
  print(decodedMessage);
}

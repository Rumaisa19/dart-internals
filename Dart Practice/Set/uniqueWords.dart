// Write a function that takes a sentence, splits it into words, and returns a list of unique words
//(ignoring duplicates and case).
List<String> uniqueWords(String sentence) {
  return sentence.toLowerCase().split(' ').toSet().toList();
}

void main() {
  String sentence = 'My name is Rumaisa What is your name?';
  List<String> words = uniqueWords(sentence);
  print(words);
}

String capitalizeEachWord(String sentence) {
  List<String> words = sentence.split(' '); // Split into words
  List<String> capitalizedWords = [];

  for (String word in words) {
    if (word.isNotEmpty) {
      String capitalizedWord = 
          word[0].toUpperCase() + word.substring(1); // First letter capitalized
      capitalizedWords.add(capitalizedWord);
    }
  }

  return capitalizedWords.join(' '); // Join the words back into a sentence
}

void main() {
  print(capitalizeEachWord("how are You?"));
}

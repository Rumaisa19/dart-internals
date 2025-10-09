Map<String, int> frequencyCount(List<String> words) {
  Map<String, int> output = {};
  for (String word in words) {
    if (output.containsKey(word)) {
      output[word] = output[word]! + 1;
    } else {
      output[word] = 1;
    }
  }
  return output;
}

void main() {
  List<String> words = [
    "apple",
    "banana",
    "apple",
    "orange",
    "banana",
    "apple",
  ];
  Map<String, int> result = frequencyCount(words);
  print(result);
}

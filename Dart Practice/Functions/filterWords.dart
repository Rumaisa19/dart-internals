// Create a function filterWords(List<String> words, int length) that returns all words longer than that length.

List<String> filterWords(List<String> words, int length) =>
    words.where((word) => word.length > length).toList();
  // List<String> result = [];
  // for (var word in words) {
  //   if (word.length > length) {
  //     result.add(word);
  //   }
  // }
  // return result;

void main() {
  print(filterWords(["Rumaisa", "Narmeen", "Nishat", "Irha"], 4));
}

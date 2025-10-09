// Write a Dart function that takes a string as input and returns the count of vowels (a, e, i, o, u) in it.
// The function should handle both uppercase and lowercase vowels.
import 'dart:io';

void main() {
  print(countOfVowels());
}

countOfVowels() {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  print('Enter a word:');
  String input = stdin.readLineSync()!;
  List<String> word = input.toLowerCase().split('').toList();
  int count = 0;
  for (int v = 0; v < vowels.length; v++) {
    for (int w = 0; w < word.length; w++) {
      if (word[w] == vowels[v]) {
        count += 1;
      }
    }
  }
  return count;
}

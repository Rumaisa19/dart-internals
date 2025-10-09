// Write a function that checks if a given string is a palindrome, ignoring spaces, punctuation, and case sensitivity.
import 'dart:io';

void main() {
  List<String> words = [];
  print('Enter words (Separated by spaces):');
  String input = stdin.readLineSync()!;
  words = input.split('');
  for (String word in words) {
    String newWord = word.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    bool result = Palindrome(newWord);
    if (result) {
      print("$word is Palindrome");
    } else {
      print('$word is not palindrome');
    }
  }
}

Palindrome(String revWord) {
  String newWord = revWord.split('').reversed.join();
  return revWord == newWord;
}

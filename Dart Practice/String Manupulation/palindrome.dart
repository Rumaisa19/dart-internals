// Write a function to check whether a given string is a palindrome (same forward & backward), ignoring case and spaces.
import 'dart:io';

bool isPalindrome() {
  print("Enter sentence/word:");
  String sentence = stdin.readLineSync()!;
  sentence = sentence.toLowerCase().replaceAll(' ', '');
  String reversed = sentence.split('').reversed.join();
  if (sentence == reversed) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(isPalindrome());
}

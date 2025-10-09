// Write a function that reverses the string without using .reversed.

import 'dart:io';

reverseString() {
  print("Enter Word:");
  String word = stdin.readLineSync()!;
  String reversed = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  return reversed;
}

void main() {
  print(reverseString());
}

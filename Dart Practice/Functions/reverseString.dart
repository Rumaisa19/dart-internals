/**Make a function reverseString(String input) that returns the reversed string. */
String reverseString(String input) {
  input.toLowerCase();
  if (input.isEmpty)
    return input;
  else {
    return input.split('').reversed.join();
  }
}

void main() {
  print(reverseString("Rumaisa"));
}

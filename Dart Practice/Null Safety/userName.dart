import 'dart:io';

String printUserName(String? name) {
  return name == 'null' ? 'Guest' : 'Hello $name';
}

void main() {
  // Asking user input
  stdout.write('Enter your name: ');
  String? input = stdin.readLineSync();

  // Printing result
  print(printUserName(input));
}

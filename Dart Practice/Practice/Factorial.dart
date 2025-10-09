import 'dart:io';

void main() {
  print("Factorial of number is ${factorial()}");
}

int factorial() {
  print("\'Factorial'");
  print("Enter Number:");
  int number = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}

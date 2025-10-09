//4.Write a function `sumEvenNumbers(List<int> nums)` that takes a list of integers and returns the sum of all the even numbers in the list.
import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter Numbers (separated by comma):");
  String input = stdin.readLineSync()!;
  numbers = input.split(',').map((e) => int.parse(e)).toList();

  int sum = sumEvenNumbers(numbers);
  print(sum);
}

sumEvenNumbers(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      sum += numbers[i];
    }
  }
  return sum;
}

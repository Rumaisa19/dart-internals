//Given an array containing integers from 1 to n, with one number missing, write a function to find the missing number.
import 'dart:io';

void main() {
  // empty list
  List<int> numbers = [];
  // input msg
  print("Enter the numbers in the list (separated by comma):");
  // input as a string (separated by spaces)
  String input = stdin.readLineSync()!;
  //split the string into integers as a list and then store in no. list as an integers
  numbers = input.split(',').map((e) => int.parse(e)).toList();
  //total integers
  int n = numbers.length + 1;
  //call function
  int missingNo = MissingInteger(n, numbers);
  // print the missing number
  print('Missing number in the list is $missingNo');
}

MissingInteger(int n, List<int> numbers) {
  // formula to calculate sum
  int sum = n * (n + 1) ~/ 2;
  // to calculate sum of given numbers
  int listSum = numbers.reduce((a, b) => a + b);
  // return missing number
  return sum - listSum;
}

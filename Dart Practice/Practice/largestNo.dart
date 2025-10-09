//1. Write a function `findSecondLargest(List<int> nums)` that takes a list of integers and returns the second largest element in the list.
//If there are fewer than two elements, return `null`.
import 'dart:io';

void main() {
  //empty list
  List integers = [];
  //input
  print('Enter numbers (separated by comma)');
  String input = stdin.readLineSync()!;
  //input(string) => list(integrs)
  integers = input.split(',').map((e) => int.parse(e)).toList();
  int? largestNumber = FindSecondLargest(integers);
  print(largestNumber);
}

FindSecondLargest(List integers) {
  if (integers.length < 2) {
    return null;
  } else {
    integers.sort();
    return integers.length - 1;
  }
}

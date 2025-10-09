//2. Write a function `removeDuplicates(List<int> nums)` that removes duplicate values from a list of integers, while maintaining the original order of the list.

import 'dart:io';

void main() {
  List<int> integers = [];
  print('Enter numbers list (separated by comma)');
  String input = stdin.readLineSync()!;
  integers = input.split(',').map((e) => int.parse(e)).toList();
  List<int> result = RemoveDuplicate(integers);
  print(result);
}

RemoveDuplicate(List<int> integers) {
  List<int> result = [];
  result = integers.toSet().toList();
  return result;
}

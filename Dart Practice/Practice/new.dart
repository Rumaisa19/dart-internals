// 4.Write a function that removes all duplicates from a list while maintaining the order of the original elements.

import 'dart:io';

void main() {
  //empty list
  List<int> integers = [];
  //msg  for data 
  print('Enter List of Integers (separated by comma)');
  //input as a String
  String input = stdin.readLineSync()!;
  // Convert Strings into List
  integers = input.split(',').map((e) => int.parse(e)).toList();
  List<int> result = RemoveDuplicate(integers);
  print(result);
}

List<int> RemoveDuplicate(List<int> integers) {
  //set => unique data
  Set<int> seen = {};
  List<int> newList = [];
  for (int element in integers) {
    if (seen.add(element)) {
      newList.add(element);
    }
  }
  return newList;
}

//Write a function that takes two sorted lists of integers and merges them into a single sorted list. The resulting list should
// contain all elements from both lists in sorted order.
import 'dart:io';

void main() {
  //two empty list
  List<int> list1 = [];
  List<int> list2 = [];
  //input from user for list 1
  print('Enter first list (separated by comma):');
  String input1 = stdin.readLineSync()!;
  list1 = input1.split(',').map((e) => int.parse(e)).toList();
  //input from user for list 2
  print('Enter first list (separated by comma):');
  String input2 = stdin.readLineSync()!;
  list2 = input2.split(',').map((e) => int.parse(e)).toList();
  //merge list 1 and 2
  List<int> mergeList = SortList(list1, list2);
  print(mergeList);
}

SortList(List<int> list1, List<int> list2) {
  //empty list
  List<int> mergeList = [];
  //merge list1 and list2
  mergeList.addAll(list1);
  mergeList.addAll(list2);
  //sort that list
  mergeList.sort();
  //return merge list
  return mergeList;
}

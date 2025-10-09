// 1. Write a Dart function that takes a list of integers and returns a new list containing only the even numbers, maintaining the original order.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = EvenNumbers(numbers);
  print(evenNumbers);
}

List<int> EvenNumbers(List<int> integers) {
  List<int> evenNumbers =
      integers.where((element) => element % 2 == 0).toList();
  return evenNumbers;
}

import 'dart:io';

void main() {
  MultiplicationTables();
}

MultiplicationTables() {
  print("Enter how many numbers do you want tables for?");
  int count = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  for (int i = 0; i < count; i++) {
    print("Enter Number:");
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  print("Enter the range up to which you want to generate table(e.g:20):");
  int range = int.parse(stdin.readLineSync()!);

  for (int number in numbers) {
    print('Multiplication Table for $number');
    for (int i = 1; i <= range; i++) {
      print("$number x $i=${number * i}");
    }
  }
}

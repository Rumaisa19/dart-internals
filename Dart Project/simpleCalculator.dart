import 'dart:io';

void main() {
  Calculator();
}

void Calculator() {
  while (true) {
    print("\n===== SIMPLE CALCULATOR =====");
    print("Choose Operation (+, -, x, /, %, logical):");
    String operation = stdin.readLineSync()!;

    print('Enter how many numbers:');
    int data_amount = int.parse(stdin.readLineSync()!);

    List<int> numbers = [];
    print('Enter numbers:');
    for (int i = 0; i < data_amount; i++) {
      int number = int.parse(stdin.readLineSync()!);
      numbers.add(number);
    }

    dynamic result; // can hold both int and bool

    if (operation == '+') {
      result = numbers.reduce((a, b) => a + b);
    } else if (operation == '-') {
      result = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        result -= numbers[i];
      }
    } else if (operation == 'x') {
      result = numbers.reduce((a, b) => a * b);
    } else if (operation == '/') {
      result = numbers[0].toDouble();
      for (int i = 1; i < numbers.length; i++) {
        result /= numbers[i];
      }
    } else if (operation == '%') {
      result = numbers[0];
      for (int i = 1; i < numbers.length; i++) {
        result %= numbers[i];
      }
    } else if (operation.toLowerCase() == 'logical') {
      print("Choose logical operation (AND / OR):");
      String logOp = stdin.readLineSync()!.toLowerCase();

      if (logOp == 'and') {
        result = numbers.reduce((a, b) => (a != 0 && b != 0) ? 1 : 0);
        result = (result == 1); // convert to bool
      } else if (logOp == 'or') {
        result = numbers.reduce((a, b) => (a != 0 || b != 0) ? 1 : 0);
        result = (result == 1);
      } else {
        print("❌ Invalid logical operation!");
        continue;
      }
    } else {
      print("❌ Invalid operation!");
      continue;
    }

    print("✅ Result: $result");

    // Ask user if they want to continue
    print("\nDo you want to continue? (y/n):");
    String choice = stdin.readLineSync()!.toLowerCase();
    if (choice != 'y') {
      print("👋 Exiting Calculator. Goodbye!");
      break;
    }
  }
}

import 'dart:io';

import 'Factorial.dart';
import 'Multiplication_Table.dart';
import 'Number_Guessing_CLI_Game.dart';
import 'simpleCalculator.dart';

void main() {
  CLI();
}

CLI() {
  while (true) {
    print("\n===== CLI Utility App =====");
    print("1. Calculator (+, -, ×, ÷, %, logical)");
    print("2. Multiplication Table Generator");
    print("3. Factorial Calculator");
    print("4. Number Guessing Game");
    print("5. Exit");
    print("Choose an option(1-5):");
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      Calculator();
    }
    if (choice == '2') {
      MultiplicationTables();
    }
    if (choice == '3') {
      factorial();
    }
    if (choice == '4') {
      Number_Guessing_Game();
    }
    if (choice == '5') {
      print('Exiting Program.Goodbye!');
      break;
    } else {
      print("invalid choice! Try again.");
    }
  }
}

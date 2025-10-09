import 'dart:io';

void main() {
  print('Enter number of people:');
  int? count = int.tryParse(stdin.readLineSync() ?? '');

  if (count == null || count <= 0) {
    print('Invalid number of people.');
    return;
  }

  List<double> amounts = [];

  for (int i = 0; i < count; i++) {
    print('Enter amount contributed by person ${i + 1}:');
    double? amount = double.tryParse(stdin.readLineSync() ?? '');
    if (amount == null || amount < 0) {
      print('Invalid amount, try again.');
      i--; // retry this iteration
      continue;
    }
    amounts.add(amount);
  }

  double total = amounts.reduce((a, b) => a + b);
  double split = total / count;

  print('\nTotal expenses: \$${total.toStringAsFixed(2)}');
  print('Each person should pay: \$${split.toStringAsFixed(2)}');

  for (int i = 0; i < count; i++) {
    double diff = amounts[i] - split;
    if (diff > 0) {
      print('Person ${i + 1} should receive \$${diff.toStringAsFixed(2)}');
    } else if (diff < 0) {
      print('Person ${i + 1} owes \$${(-diff).toStringAsFixed(2)}');
    } else {
      print('Person ${i + 1} is settled.');
    }
  }
}


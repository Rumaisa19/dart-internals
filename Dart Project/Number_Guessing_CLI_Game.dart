import 'dart:math';
import 'dart:io';

void main() {
  Number_Guessing_Game();
}

Number_Guessing_Game() {
  Random random = Random();
  int secret_number = random.nextInt(100) + 1;
  print('Welcome to the number guessing game!');
  print('I have picked a number between 1 and 100. Can you guess it?');

  int? guess;
  int attempt = 0;

  while (guess != secret_number) {
    print("Enter guess number:");
    guess = int.parse(stdin.readLineSync()!);
    attempt++;
    if (guess < secret_number) {
      print("Too Low!Try again.");
    } else if (guess > secret_number) {
      print("Too high!Try again.");
    } else {
      print("🎉 Correct! The number was $secret_number.");
      print("You guessed it in $attempt attempts.");
    }
  }
}

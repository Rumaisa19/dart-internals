// Write a function isEven(int number) that returns true if the number is even.

isEven(int number) {
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(isEven(10));
}

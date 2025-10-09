// Create a function sumList(List<int> numbers) that returns the total sum.

int sumList(List<int> numbers) {
  int total = 0;
  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i]; // total = total + numbers[i]
  }
  return total;
}

void main() {
  print(sumList([4, 3]));
}

// Function getEvenNumbers(List<int> nums) that returns only even numbers as a list.

List<int> getEvenNumbers(List<int> nums) {
  return nums.where((num)=>num.isEven).toList();
}

void main() {
  print(getEvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
}

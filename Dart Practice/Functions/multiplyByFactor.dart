
List<int> multiplyList(List<int> numbers, int factor) =>
    numbers.map((num) => num * factor).toList();

// List<int> multiplyList(List<int> numbers, int factor) {
//   List<int> result = [];
//   for (int i = 0; i < numbers.length; i++) {
//     int each_num = numbers[i] * factor;
//     result.add(each_num);
//   }
//   return result;
// }

void main() {
  print(multiplyList([1, 2, 3, 4, 5], 2));
}

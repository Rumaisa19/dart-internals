// 3. Write a function that accepts two nullable strings, concatenates them, and returns the result. If either string is `null`,
//treat it as an empty string.


void main() {
  print(nullableString(null,'new'));
}

nullableString(String? a, String? b) => (a ?? '') + (b ?? '');

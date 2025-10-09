Future<String> step1() => Future.delayed(Duration(seconds: 1), () => "Step 1 done");
Future<String> step2() => Future.delayed(Duration(seconds: 1), () => "Step 2 done");

void main() {
  step1().then((result1) {
    print(result1); // Prints "Step 1 done"
    return step2();  // Return next Future
  }).then((result2) {
    print(result2); // Prints "Step 2 done"
  });
}

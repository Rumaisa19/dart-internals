//2.Write a function that generates a list of the first n numbers in the Fibonacci sequence.
import 'dart:io';

void main() {
  print('Enter number:');
  int n = int.parse(stdin.readLineSync()!);
  List<int> result = FibonacciSeq(n);
  print(result);
}

List<int> FibonacciSeq(int n) {
  List<int> fib_list = [];
  if (n >= 1) {
    fib_list.add(0);
  }
  if (n >= 2) {
    fib_list.add(1);
  }
  for (int i = 2; i < n; i++) {
    fib_list.add(fib_list[i - 1] + fib_list[i - 2]);
    //n=5 => fib_list[5-1]=fib_list[5-2]=fib_list[4]+fib_list[3]
    // n=5 => [0,1,1,2,3]
  }
  return fib_list;
}

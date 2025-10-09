// Write a function findMax(int a, int b, int c) that returns the largest.

int findMax(int a, b, c) {
  if (a >= b && a >= c) return a;
  if (b >= a && b >= c)
    return b;
  else {
    return c;
  }
}

void main() {
  print("largest Number :${findMax(1, 2, 3)}");
}

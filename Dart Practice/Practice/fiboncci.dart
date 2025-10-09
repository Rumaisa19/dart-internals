
//Fibonacci is a series of numbers in which each number is the sum of the two preceding numbers, starting from 0 and 1. The sequence begins like this:
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
Map<int, int> cache = {};

 fibonacci(int n) {
  if (n < 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else if (cache.containsKey(n)) {
    return cache[n]; // Return the cached value
  } else {
    // Calculate and store the result
    int result = fibonacci(n - 1) + fibonacci(n - 2);
    cache[n] = result; // Store the result in the cache
    return result;
  }
}

void main() {
  for (int i = 0; i < 10; i++) {
    print(fibonacci(i));
  }
}

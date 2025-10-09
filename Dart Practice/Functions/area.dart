/**Write a function calculateArea(double radius) that returns area of a circle.
Use: area = π × r² */
calculateArea(double r) {
  const double pi = 3.14;
  if (r > 0) {
    double area = pi * (r * r);
    return area;
  }
}

void main() {
  print(calculateArea(5));
}

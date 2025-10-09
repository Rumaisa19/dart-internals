/*Create a function checkAge(int age) that: Returns "Minor" if age < 18
"Adult" if 18–60
"Senior" if 60+ */

String checkAge(int age) {
  if (age < 18) return "minor";
  if (age > 18 && age < 60) return "adult";
  if (age >= 60)
    return "senior";
  else
    return "Error!";
}

void main() {
  print(checkAge(20));
}

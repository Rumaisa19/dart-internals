/** Q1: Nullable Variable + Null Check
dart
Copy code
// Declare a nullable String and assign null.
// Later assign a value if it's null.
// Then print the value in uppercase safely.
 */

nullableString() {
  String? name;
  print(name);
  if (name == null) {
    name = 'Rumaisa';
  }
  return name.toUpperCase();
}

void main() {
  print(nullableString());
}

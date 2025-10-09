// 👩‍💻 Q5: Null Safe Function
// Write a function that takes a nullable string:
// String? greet(String? name)
// If name is null, return "Hello, Guest"
// Otherwise, return "Hello, <name>!"
String? greet([String? name]) {//if we pass parameter in a square bracket it will become optional
  if (name == null) {
    return 'hello guest';
  } else {
    return 'hello $name';
  }
}

void main() {
  print(greet());
  print(greet('Rumaisa'));
}

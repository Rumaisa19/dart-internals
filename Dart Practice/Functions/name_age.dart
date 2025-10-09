/**Write generateUser(String name, int age) that returns:
Map<String, dynamic> {
  "name": name,
  "age": age
} */
Map<String, dynamic> generate(String name, int age) {
  return {"name": name, "age": age};
}

void main() {
  print(generate("Rumaisa", 19));
  print(generate("Rumaisa", 19));
  print(generate("Rumaisa", 19));
  print(generate("Rumaisa", 19));
  print(generate("Rumaisa", 19));
}

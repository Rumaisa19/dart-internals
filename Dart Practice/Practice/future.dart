Future<String> getName(String name) async {
  await Future.delayed(Duration(seconds: 5));
  return name;
}

void main() {
  ;
  print(getName("Rumaisa"));
}

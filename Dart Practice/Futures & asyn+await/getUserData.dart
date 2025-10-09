Future<List<Map<String, String>>> getUsersData() async {
  print('Data downloading.....');
  await Future.delayed(Duration(seconds: 3));
  return [
    {'name': 'Rumaisa Mushtaq', 'age': '20'},
    {'name': 'Irha Fatima', 'age': '15'},
  ];
}

void main() async {
  List<Map<String, String>> users = await getUsersData();

  for (var user in users) {
    print('name: ${user['name']}, age: ${user['age']}');
  }
}

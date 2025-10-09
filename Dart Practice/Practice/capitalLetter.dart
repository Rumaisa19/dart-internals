// 3. Write a Dart function that accepts a list of strings and returns a new list where each string is capitalized (i.e., the first letter is uppercase).
//You cannot use any built-in methods like toUpperCase().
void main() {
  List<String> data = ['banana', 'Apple', 'rumaisa'];
  List<String> cap_form = Capitalized(data);
  print(cap_form);
}

Capitalized(List<String> cap) {
  List<String> cap_form = cap.map((element) {
    if (element.isEmpty) return element;
    return element[0].toUpperCase() + element.substring(1);
  }).toList();
  return cap_form;
}

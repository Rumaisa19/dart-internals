import 'dart:io';

late String description;
String data() {
  description = 'This is a late initialized variable';
  return description;
}

void main() {
  stdout.write(data());
  stdout.write('\naccessing directly:$description');
}

import 'dart:io';

String initialInUpperCase() {
  stdout.write('Enter your full Name:');
  String fullName = stdin.readLineSync()!;

  List<String> names = fullName.split(' ');
  String initials = '';

  for (String name in names) {
    if (name.isNotEmpty) {
      initials += name[0].toUpperCase();
    }
  }

  return initials.trim();
}

void main() {
  print(initialInUpperCase());
}

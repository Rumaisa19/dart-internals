//  Q3: Null Assertion Operator
// Declare String? name = "Rumaisa";
// Print name's first letter using null assertion (!).
// Now change name to null and run again — what happens?
// import 'dart:io';

// void main() {
//   print("Enter name:");
//   String? name = stdin.readLineSync();
//   print(name?.substring(0, 1) ?? "Name is null");
// }
import 'dart:io';

void main() {
  print("Enter name:");
  String? name = stdin.readLineSync(); // Don't use !

  // Null assertion — will throw error if name is null
  print(name!.substring(0, 1));
}

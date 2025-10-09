import 'dart:io'; // Import the Dart I/O library to read user input

void main() {
  // List of user data (email and password)
  List<Map<String, dynamic>> data = [
    {"email": "abc@gmail.com", "password": "123"},
    {"email": "def@gmail.com", "password": "456"},
    {"email": "ghi@gmail.com", "password": "789"},
  ];

  bool isLogin = false; // A flag to check if login is successful

  // Keep asking for login until the user logs in successfully
  while (!isLogin) {
    // Ask the user to enter their email
    print("Enter email:");
    String email = stdin.readLineSync()!.trim(); // Read and clean the email input

    // Ask the user to enter their password
    print("Enter password:");
    String password = stdin.readLineSync()!.trim(); // Read and clean the password input

    // Check if both email and password are not empty
    if (email.isNotEmpty && password.isNotEmpty) {
      // Loop through the list of user data to check for a match
      for (var entry in data) {
        // If email and password match, login is successful
        if (entry["email"] == email && entry["password"] == password) {
          print("Login successful");
          isLogin = true; // Set the flag to true to exit the loop
          break; // Exit the loop early since login is successful
        }
      }

      // If no match is found, print a failure message
      if (!isLogin) {
        print("Login failed. Please try again.");
      }
    } else {
      // If email or password is empty, print an error message
      print("Invalid input. Email and password cannot be empty.");
    }
  }
}
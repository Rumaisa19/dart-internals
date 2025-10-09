import 'dart:io';

// StudentRecord class (better than "Teacher")
class StudentRecord {
  int id;
  String name;
  int age;
  String teacherName;
  int marks;

  StudentRecord(this.id, this.name, this.age, this.teacherName, this.marks);

  void displayInfo() {
    print('ID: $id | Name: $name | Age: $age | '
        'Teacher: $teacherName | Marks: $marks');
  }
}

class StudentManagementSystem {
  List<StudentRecord> studentData = [];
  Map<int, int> studentMarks = {}; // ID → Marks
  Set<int> studentIDs = {}; // unique IDs
  int idCounter = 100;

  // ✅ Add Student
  void addStudent() {
    print("\n--- Add Student ---");
    stdout.write("Enter Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter Age: ");
    int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    stdout.write("Enter Marks: ");
    int marks = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    stdout.write("Enter Teacher Name: ");
    String teacherName = stdin.readLineSync()!;

    int newID = ++idCounter;
    StudentRecord newStudent =
        StudentRecord(newID, name, age, teacherName, marks);

    studentData.add(newStudent);
    studentMarks[newID] = marks; // ✅ ID as key (no duplicate issues)
    studentIDs.add(newID);

    print("✅ Student added successfully with ID $newID\n");
  }

  // ✅ Show All Students
  void showAllStudents() {
    print("\n==== Student Data ====");
    if (studentData.isEmpty) {
      print("No students found.");
      return;
    }

    for (var s in studentData) {
      s.displayInfo();
    }

    print("\n--- Student Marks Map (ID → Marks) ---");
    print(studentMarks);

    print("\n--- Unique Student IDs ---");
    print(studentIDs);
  }

  // ✅ Search Student by Name
  void searchStudent() {
    stdout.write("\nEnter Student Name to Search: ");
    String searchName = stdin.readLineSync()!;
    bool found = false;

    for (var s in studentData) {
      if (s.name.toLowerCase() == searchName.toLowerCase()) {
        print("\n✅ Student Found:");
        s.displayInfo();
        found = true;
        break;
      }
    }

    if (!found) {
      print("❌ No student found with the name $searchName.");
    }
  }

  // ✅ Show Results with Grades
  void showResults() {
    print("\n==== Results ====");
    if (studentData.isEmpty) {
      print("No students to show results.");
      return;
    }

    for (var s in studentData) {
      if (s.marks < 50) {
        print("${s.name} ❌ Failed with ${s.marks} marks.");
      } else if (s.marks <= 60) {
        print("${s.name} Passed with Grade D (${s.marks}).");
      } else if (s.marks <= 70) {
        print("${s.name} Passed with Grade C (${s.marks}).");
      } else if (s.marks <= 75) {
        print("${s.name} Passed with Grade B (${s.marks}).");
      } else if (s.marks <= 80) {
        print("${s.name} Passed with Grade A (${s.marks}).");
      } else {
        print("${s.name} 🌟 Passed with Grade A+ (${s.marks}).");
      }
    }
  }

  // ✅ Menu loop
  void run() {
    while (true) {
      print("\n===== Student Management System =====");
      print("1. Add Student");
      print("2. Show All Students");
      print("3. Search Student by Name");
      print("4. Show Results (Pass/Fail/Excellent)");
      print("5. Exit");

      stdout.write("Choose option (1-5): ");
      String choice = stdin.readLineSync() ?? '';

      switch (choice) {
        case '1':
          addStudent();
          break;
        case '2':
          showAllStudents();
          break;
        case '3':
          searchStudent();
          break;
        case '4':
          showResults();
          break;
        case '5':
          print('👋 Thanks for visiting our system!');
          return;
        default:
          print("❌ Invalid choice. Please enter (1-5).");
      }
    }
  }
}

void main() {
  StudentManagementSystem sms = StudentManagementSystem();
  sms.run();
}

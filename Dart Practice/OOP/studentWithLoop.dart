// ✅ Define the Student class
class Student {
  String name;
  int score;

  Student(this.name, this.score);

  // ✔️ No need to pass any parameters here
  void checkResult() {
    if (score >= 50) {
      print('$name is Passed ✅.');
    } else {
      print('$name is Failed ❌.');
    }
  }
}

void main() {
  // 🔁 Create a list of students
  List<Student> students = [
    Student('Rumaisa', 77),
    Student('Irha', 45),
    Student('Zunaira', 85),
    Student('Kashaf', 32),
    Student('Nabeeha', 55),
  ];

  // ✅ Loop through the list using forEach
  students.forEach((student) {
    print('Student: ${student.name}, Score: ${student.score}');
    student.checkResult();
    print(''); // Just to add spacing
  });
}

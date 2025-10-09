/**🧪 Challenge: Create a class Student with:
Properties: name, score
Constructor using this
Method checkResult() that prints:
"Passed" if score ≥ 50
"Failed" if score < 50
Then:
Create a list of 3 students
Use a loop to print their result */

class Student {
  String name;
  int score;
  Student(this.name, this.score);
  void checkResult() {
    if (score >= 50) {
      print('$name is Passed with $score marks.');
    }
    
    if (score < 50) {
      print('$name is Failed with $score marks.');
    }
    ;
  }
}

void main() {
  Student student_1 = Student('Rumaisa', 77);
  Student student_2 = Student('Irha', 20);
  Student student_3 = Student('Kashaf', 48);
  student_1.checkResult();
  student_2.checkResult();
  student_3.checkResult();
}

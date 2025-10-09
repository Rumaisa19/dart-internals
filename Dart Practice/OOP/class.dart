/**✅ Create 3 classes:
Person Properties: name, age  Method: introduce()
Teacher extends Person Property: subject  Method: teach()
MathTeacher extends Teacher Property: topic  Method: explain() → prints:
"I explain <topic> in <subject> class."

🧪 In main():
Create a MathTeacher object (e.g., "Rumaisa", 20, "Math", "Algebra")
Call all 3 methods:
introduce() teach() explain() */
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void introduce() {
    print("Hi, I'm $name and I'm $age years old.");
  }
}

class Teacher extends Person {
  String subject;
  Teacher(String name, int age, this.subject) : super(name, age);
  void teach() {
    print("I teach $subject.");
  }
}

class MathTeacher extends Teacher {
  String topic;
  MathTeacher(String name, int age, String subject, this.topic)
    : super(name, age, subject);
  void explain() {
    print("I explain $topic in $subject class.");
  }
}

void main() {
  MathTeacher mathTeacher = MathTeacher(
    "Imran",
    45,
    'Physics',
    'Newton\'s Law',
  );
  mathTeacher.introduce();
  mathTeacher.teach();
  mathTeacher.explain();
}

/** Challenge:
In Person, the introduce() says:
"Hi, I'm Rumaisa and I'm 20 years old."
In Teacher, override it to say:
"Hi, I'm Rumaisa, 20, and I teach Mathematics." */

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
  @override
  void introduce() {
    print("Hi, I'm $name, $age, and I teach $subject.");
  }
}

void main() {
  Person person = Person("Rumaisa", 20);
  Teacher teacher = Teacher("Rumaisa", 20, 'Mathematics');
  person.introduce();
  teacher.introduce();
}

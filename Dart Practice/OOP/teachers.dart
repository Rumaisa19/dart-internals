/**Create a base class Person with:
name, age
Method introduce() → prints: "Hi, I'm <name> and I'm <age> years old."
Create a child class Teacher that extends Person, and adds:
subject
Method teach() → prints: "I teach <subject>."
In main(), create a Teacher and call both introduce() and teach(). */

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
    print("I teach $subject");
  }
}

void main() {
  Teacher teacher = Teacher('Rumaisa', 20, 'Mathematics');
  teacher.introduce();
  teacher.teach();
}

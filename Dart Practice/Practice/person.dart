// 2. Write a Dart class called Person that has the following properties: name, age, and address. The class should have a method greet() that prints a greeting using the person's
//name. Additionally, create a method that returns the person's full description, including name, age, and address.

class Person {
  String? name;
  int? age;
  String? address;
  greet() {
    print('Assalam o alikum. My name is $name');
  }

  description() {
    print('''Hello world!! 
    name : $name
    age : $age
    address : $address''');
  }
}

void main() {
  Person person = Person();
  person.name = 'Rumasia Mushtaq';
  person.age = 19;
  person.address = 'Karachi';
  person.greet();
  person.description();
}

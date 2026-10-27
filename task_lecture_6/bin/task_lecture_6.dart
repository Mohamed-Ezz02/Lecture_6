class Person {
  String _name;
  int _age;

  Person(this._name, this._age);
  String get name => _name;
  int get age => _age;
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}
class Student extends Person {
  String studentId;
  double grade;
  Student(String name, int age, this.studentId, this.grade) : super(name, age);
  @override
  void displayInfo() {
    print('Student ID: $studentId, Name: $name, Age: $age, Grade: $grade');
  }
}
void main() {
  var person = Person('Ahmed', 40);
  print('--- Person Info ---');
  person.displayInfo();
  var student = Student('Fatima', 20, 'S10023', 94.5);
  print('\n--- Student Info ---');
  student.displayInfo();
}

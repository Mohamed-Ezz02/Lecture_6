//Q1

class Student {
  String _name;
  int _age;
  double _grade;
  Student(this._name, int age, double grade)
      : _age = age,
        _grade = grade {
    this.age = age;
    this.grade = grade;
  }
  String get name => _name;
  set name(String name) => _name = name;
  int get age => _age;
  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      print('Error: Age must be positive!');
    }
  }
  double get grade => _grade;
  set grade(double grade) {
    if (grade >= 0 && grade <= 100) {
      _grade = grade;
    } else {
      print('Error: Grade must be between 0 and 100!');
    }
  }
  void display() {
    print('Student Name: $_name, Age: $_age, Grade: $_grade');
  }
}

void main() {
  var student = Student('Ali', 20, 85.5);
  student.display();

  student.age = -5; 
  student.grade = 105; 

  student.age = 22;
  student.grade = 92.0;
  student.display();
}

//Q2

class BankAccount {
  String _accountHolder;
  double _balance;
  BankAccount(this._accountHolder, this._balance);
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Successfully deposited: \$$amount. New Balance: \$$_balance');
    } else {
      print('Error: Deposit amount must be positive!');
    }
  }
  void withdraw(double amount) {
    if (amount <= 0) {
      print('Error: Withdrawal amount must be positive!');
    } else if (amount > _balance) {
      print('Error: Insufficient funds! Withdrawal exceeds current balance.');
    } else {
      _balance -= amount;
      print('Successfully withdrew: \$$amount. Remaining Balance: \$$_balance');
    }
  }
  double get balance => _balance;
  String get accountHolder => _accountHolder;
}
void main() {
  var account = BankAccount('Mohammed', 500.0);
  account.deposit(150.0);
  account.deposit(-50.0); 
  account.withdraw(200.0); 
  account.withdraw(600.0);
  account.withdraw(-10.0); 
}


//Q3

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


// Q4
abstract class Employee {
  String name;
  String employeeId;

  Employee(this.name, this.employeeId);

  double calculateSalary();
}
class FullTimeEmployee extends Employee {
  double monthlySalary;
  FullTimeEmployee(String name, String employeeId, this.monthlySalary)
      : super(name, employeeId);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}
class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, String employeeId, this.hourlyRate, this.hoursWorked)
      : super(name, employeeId);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('Khaled', 'E001', 4500.0),
    PartTimeEmployee('Sara', 'E002', 25.0, 80),
  ];
  for (var emp in employees) {
    print('Employee: ${emp.name} (ID: ${emp.employeeId}) - Salary: \$${emp.calculateSalary()}');
  }
}
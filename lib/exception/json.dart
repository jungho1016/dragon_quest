import 'dart:io';
import 'dart:convert';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(),
    };
  }
}

void main() {
  Employee leader = Employee('홍길동', 41);

  Department department = Department('총무부', leader);

  String json = jsonEncode(department.toJson());

  File('company.txt').writeAsStringSync(json);
}

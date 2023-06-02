import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Department {
  String group;
  Department leader;

  Department(this.group, this.leader);
  Department.fromJson(Map<String, dynamic> json)
      : group = json['group'],
        leader = json['role'];

  Map<String, dynamic> toJson() {
    return {
      'group': group,
      'leader': leader,
    };
  }
}

void main() {
  String jsonString =
      '{"name": "홍길동","age": 41, "group" : "총무부", "role" : "리더",  "email": "abc@aaa.com"}';

  // jsonString => Map<String, dynamic>
  Map<String, dynamic> json = jsonDecode(jsonString);
  print(json);
  print(json['name']);
  print(json['email']);
  print(json['group']);

  Employee leader = Employee('홍길동', 41);
  Department department = Department('총무부', leader); //?

  // 역직렬화
  // Employee employee = Employee.fromJson(json);
  // print(employee.name);
  // print(employee.age);
  // Department department = Department.fromJson(json);
  // print(department.name);
  // print(department.leader);
  // var result = print(department.name +
  //     department.leader +
  //     '${employee.name}(${employee.age})');

  File file = File('company.txt');
  file.writeAsStringSync(jsonString);
}

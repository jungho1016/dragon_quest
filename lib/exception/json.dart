import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : this.name = json['name'],
        this.age = json['age'];

  Map<String, dynamic> toJson() => {'name': name, 'age': age};
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Department.fromJson(Map<String, dynamic> json)
      : this.name = json['grop'],
        this.leader = json['leader']; //??? EMployee leadr 타입

  Map<String, dynamic> toJson() => {'name': name, 'leader': leader.toJson()};
}

void main() {
  String jsonString =
      '{"name" : "홍길동", "age" : 41, "grop" : "총무부", "position" : "leader"}';
  Map<String, dynamic> json = jsonDecode(jsonString); // 역직렬화
  Employee employee = Employee.fromJson(json);
  Department department = Department.fromJson(json);

  File file = File('company.txt');
  file.writeAsStringSync(jsonString);
}

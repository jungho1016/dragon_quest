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
  Employee employee = Employee.fromJson(json); // 역직렬화
  Department department = Department.fromJson(json); // 역직렬화
  Map<String, dynamic> emplyee1 = employee.toJson(); // 직렬화
  Map<String, dynamic> department1 = department.toJson(); // 직렬화
  String employee2 = jsonEncode(employee); // 직렬화
  String department2 = jsonEncode(department); // 직렬화

  File file = File('company.txt');
  file.writeAsStringSync(jsonString);
}

// 연습문제 2-1
//
// 다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오
//
// 1. 대한민국의 도시 이름 모음 (순서 상관 없음) - Set
// 2. 10명 학생의 시험 점수 - List
// 3. 대한민국의 도시별 인구수 (순서 상관 없음) - Map

// 연습 문제 2-2,3
class Person {
  String name;
  int age;

  Person({required this.name, this.age = 0});
}

void main() {
  Person person1 = Person(name: '홍길동', age: 20);
  Person person2 = Person(name: '한석봉', age: 25);

  List<Person> persons = [person1, person2];
  print(persons[0].name);
  print(persons[1].name);

  Map<Person, String> Persons = {person1: 'person1', person2: 'person2'};
  // print(Persons.keys);
  // print(Persons.entries);
  Persons.keys.forEach((element) {
    // print(element.name);
    // print(element.age);
    print('"${element.name}의 나이는 ${element.age}살"');
  });
}

// 연습 문제 2-3

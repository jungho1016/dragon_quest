class Hero {
  String name;
  int hp;
  String? sword;

  Hero({required this.name, required this.hp, this.sword}) {
    print('Hero 클래스의 인스턴스를 생성했습니다.');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hero &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          hp == other.hp &&
          sword == other.sword;

  @override
  int get hashCode => name.hashCode ^ hp.hashCode ^ sword.hashCode;

  void attack() {}
}

class SuperHero extends Hero {
  SuperHero({required super.name, required super.hp, required super.sword}) {
    print('SuperHero 클래스의 인스턴스를 생성했습니다');
  }

  @override
  void attack() {
    // TODO: implement attack
    super.attack();
  }
}

void main() {
  SuperHero superHero =
      SuperHero(name: '아이언맨', hp: 10, sword: '검'); // 인스턴스화 했을때 생성자 바디가 생성된다.
  // print(superHero.sword);
}

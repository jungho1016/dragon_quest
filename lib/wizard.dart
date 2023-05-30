class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power}) {
    if (name.length < 3) {
      throw Exception('3글자 이상이여야 합니다.');
    }
    if (power < 0.5 || power > 100.0) {
      throw Exception('마력이 이상합니다.');
    }
  }
}
//Todo : 오늘 뭐 먹지?

class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;

  Wizard({required this.name, required this.hp, required this.mp, this.wand}) {
    if (name.length < 3) {
      throw Exception('3글자 이상이여야 합니다.');
    }
    if (wand == null) {
      throw Exception('마법사의 지팡이는 있어야 합니다.');
    }
    if (mp < 0) {
      throw Exception('MP는 0 이상이여야 합니다');
    }
    if (hp < 0) {
      hp = 0;
      print('hp가 0이 됐습니다');
    }
  }
}

void main() {
  Wand wand1 = Wand(name: '마법사의 완드', power: 1);
  print(wand1.name);
  print(wand1.power);
  print(wand1.hashCode);
  // Wand wand2 = Wand(name: '완드', power: 0);
  // print(wand2.name); Exception: 3글자 이상이여야 합니다.
  // print(wand2.power); Exception: 마력이 이상합니다.
  Wizard wizard1 = Wizard(name: '간달프', hp: 0, mp: 1, wand: wand1);
  print(wizard1.name);
  print(wizard1.hp);
  print(wizard1.mp);
  print(wizard1.wand?.power);
  print(wizard1.wand?.name);
  print(wizard1.hashCode);
  // Wizard wizard2 = Wizard(name: '김리이', hp: -1, mp: -1, wand: wand1);
  // print(wizard2.name);  Exception: 3글자 이상이여야 합니다.
  // print(wizard2.hp);
  // print(wizard2.mp);  Exception: 'MP는 0 이상이여야 합니다'
  // print(wizard2.hashCode);
}

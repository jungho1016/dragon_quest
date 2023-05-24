class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power}) {
    if (name.length < 3) {
      throw Exception('에러메세지');
    }
    if (power < 0.5 || power > 100.0) {
      throw Exception('에러메세지');
    }
  }
}

class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;

  Wizard({required this.name, required this.hp, required this.mp, this.wand}) {
    if (name.length < 3) {
      throw Exception('에러메세지');
    }
    if (wand == null) {
      throw Exception('에러메세지');
    }
    if (mp < 0) {
      throw Exception('에러메세지');
    }
    if (hp < 0) {
      hp = 0;
    }
  }
}

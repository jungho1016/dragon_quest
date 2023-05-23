import 'dart:math';

// 연습 문제 8-1
class Cleric {
  // 연습문제 8-2
  String name;
  int hp = 50;
  int mp = 10;
  static final hpMax = 50;
  static final mpMax = 10;
  // 연습 문제 9-1

  Cleric({
    required this.name,
    required this.hp,
    required this.mp,
  });
  // 연습문제 8-3
  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = hpMax;
      print('hp : 최대 체력 회복, mp : $mp');
    } else {
      print('mp 부족합니다.');
    }
  }

  // 연습문제 8-4
  void pray(int seconds) {
    int? recovery = seconds + Random().nextInt(3);
    int plusMp = recovery + mp;
    if (plusMp < mpMax) {
      print('mp 회복 되지 않습니다');
    } else {
      print('mp: $plusMp');
    }

    // 연습 문제 9-2
    final clericA = Cleric(name: '아서스', hp: 40, mp: 5);
    final clericB = Cleric(name: '아서스', hp: 35, mp: 0);
    final clericC = Cleric(name: '아서스', hp: 35, mp: 0);
    final clericD = Cleric(name: '아서스', hp: 0, mp: 0);
  }
}

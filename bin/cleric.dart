import 'dart:math';

// 연습 문제 8-1
class Cleric {
  // 연습문제 8-2
  static const hpMax = 50;
  static const mpMax = 10;
  String name;
  int hp;
  int mp;

  // 연습 문제 9-1

  Cleric({
    required this.name,
    this.mp = mpMax,
    this.hp = hpMax,
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
  int pray(int seconds) {
    int recovery = seconds + Random().nextInt(3);
    int regain = min(mpMax, recovery + mp);
    mp += regain;
    return regain;
  }
}

void main() {
  Cleric cleric = Cleric(name: 'Cleric');
  print('hp: ${cleric.hp}');
  print('mp: ${cleric.mp}');
  cleric.selfAid();
  print('hp: ${cleric.hp}');
  print('mp: ${cleric.mp}');
  cleric.pray(0);
  print(cleric.pray(3));
  // 연습 문제 9-2
  final clericA = Cleric(name: '아서스', hp: 40, mp: 5);
  final clericB = Cleric(name: '아서스', hp: 35, mp: Cleric.mpMax);
  final clericC = Cleric(name: '아서스', hp: Cleric.hpMax, mp: Cleric.mpMax);

  print('name : ${clericA.name}');
  print('hp : ${clericB.hp}');
  print('mp : ${clericC.mp}');
}

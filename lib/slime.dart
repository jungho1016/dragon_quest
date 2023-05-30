import 'dart:math';

import 'package:dragon_quest/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int attackChance;
  PoisonSlime(super.suffix, {this.attackChance = 5});

  @override
  void attack(Hero hero) {
    super.attack(hero);
    int currentHp;

    if (attackChance > 0) {
      print('추가로, 독 포자를 살포했다!');
      int posiondamageHp = Random().nextInt(5) + 1;
      print('"$posiondamageHp포인트의 데미지"');
      currentHp = hero.hp - posiondamageHp;
      print('hp = $currentHp');
      attackChance -= 1;
      print('attackChance : $attackChance');
    } else {
      print('독 포자가 다 떨어졌다!');
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A');
  Hero hero = Hero(name: '홍길동', hp: 100, sword: null);
  poisonSlime.attack(hero); // 1차공격
  poisonSlime.attack(hero); // 2차공격
  poisonSlime.attack(hero); // 3차공격
  poisonSlime.attack(hero); // 4차공격
  poisonSlime.attack(hero); // 5차공격
  poisonSlime.attack(hero); // 6차공격
}

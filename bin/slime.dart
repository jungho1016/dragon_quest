import 'dart:math';

import 'hero.dart';

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
    print('보통 슬라임과 같은 공격'); //?
    int currentHp;

    if (attackChance > 0) {
      print('추가로, 독 포자를 살포했다!');
      int posiondamageHp = Random().nextInt(5) + 1;
      print('"$posiondamageHp포인트의 데미지"');
      currentHp = hero.hp - posiondamageHp;
      print('hp = $currentHp');
      attackChance -= 1; //?
      print('attackChance : $attackChance');
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A');
  Hero hero = Hero(name: '홍길동', hp: 100, sword: null);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
}

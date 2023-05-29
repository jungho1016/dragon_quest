class Zerg {
  int hp;
  final int maxHp;
  Zerg(this.hp, this.maxHp);

  void autoMaticRecoveryhp() {
    for (int i = hp; hp < maxHp; hp++) {
      print('hp : $hp');
    }
  }
}

class BiounicUnit extends Zerg {
  BiounicUnit(super.hp, super.maxHp);
}

class Unit extends BiounicUnit {
  Unit(super.hp, super.maxHp);
}

class Building extends BiounicUnit {
  Building(super.hp, super.maxHp);
}

void main() {
  Unit unit = Unit(10, 100);
  unit.autoMaticRecoveryhp();
  print(unit.hp);
}

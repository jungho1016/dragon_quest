abstract class Terran {
  String name;
  int hp;
  final int maxHp;
  Terran(this.name, this.hp, this.maxHp);
}

abstract class Unit extends Terran {
  Unit(super.name, super.hp, super.maxHp);
}

abstract class BiounicUnit extends Unit {
  BiounicUnit(super.name, super.hp, super.maxHp);

  void medicHeal() {
    for (int i = hp; hp < maxHp; hp++) {
      print('hp: $hp');
    }
  }
}

class Marin extends BiounicUnit {
  Marin(super.name, super.hp, super.maxHp);
}

class Medic extends BiounicUnit {
  Medic(super.name, super.hp, super.maxHp);
}

void heal(BiounicUnit bionic) {
  // 메딕은 바이오 유닛과 SCV를 치료할 수 있지만 건물은 치료할 수 없음
}

class Mechanic extends Unit {
  Mechanic(super.name, super.hp, super.maxHp);

  void scvRepair() {
    for (int i = hp; hp < maxHp; hp++) {
      print('hp: $hp');
    }
  }
}

class Tank extends Mechanic {
  Tank(super.name, super.hp, super.maxHp);
}

class Vulture extends Mechanic {
  Vulture(super.name, super.hp, super.maxHp);
}

class SCV extends Mechanic implements BiounicUnit {
  SCV(super.name, super.hp, super.maxHp);

  @override
  void medicHeal() {
    for (int i = hp; hp < maxHp; hp++) {
      print('hp: $hp');
    }
  }

  void gatherResources() {}

  void repair() {}
}

class Squad {
  List<BiounicUnit> unitDesignation = [];

  void addToSquad(BiounicUnit unit) {
    if (unitDesignation.length <= 12) {
      unitDesignation.add(unit);
      print(' 부대에 ${unit.name} 추가');
    } else {
      print('더 이상 추가 할 수 없습니다.');
    }
  }

  void removeFromSquad(BiounicUnit unit) {
    unitDesignation.remove(unit);
    print('부대에 ${unit.name} 제거 ');
  }

  void printSquad() {
    print('부대 멤버: ${unitDesignation.toString()}');

    for (BiounicUnit unit in unitDesignation) {
      print(unit.name.toString());
    }
  }
}

void main() {
  Squad squad = Squad();

  BiounicUnit marin = Marin('Marin', 10, 40);
  print(marin.runtimeType);
  squad.addToSquad(marin);
  Marin marin1 = Marin('Marin', 20, 40);
  squad.addToSquad(marin1);
  Marin marin2 = Marin('Marin', 30, 40);
  squad.addToSquad(marin2);

  marin.medicHeal();
  print(marin);

  Medic medic = Medic('medic', 10, 60);
  squad.addToSquad(medic);

  medic.medicHeal();
  print(medic.hp);

  Medic medic1 = Medic('medic1', 20, 60);
  squad.addToSquad(medic1);
  Medic medic2 = Medic('medic2', 30, 60);
  squad.addToSquad(medic2);

  SCV scv = SCV('SCV', 10, 60);
  squad.addToSquad(scv);
  SCV scv1 = SCV('SCV1', 20, 60);
  squad.addToSquad(scv1);
  SCV scv2 = SCV('SCV2', 30, 60);
  squad.addToSquad(scv2);

  squad.printSquad();
  squad.removeFromSquad(marin);
  squad.printSquad();
}

class Protoss {
  int shield;
  final int maxshield;
  Protoss(this.shield, this.maxshield);

  void autoMaticRecoveryhp() {
    for (int i = shield; shield < maxshield; shield++) {
      print('shield : $shield');
    }
  }
}

class BiounicUnit extends Protoss {
  BiounicUnit(super.shield, super.maxshield);
}

class Zealot extends Protoss {
  Zealot(super.shield, super.maxshield);
}

class Mechanic extends Protoss {
  Mechanic(super.shield, super.maxshield);
}

class Dragun extends Protoss {
  Dragun(super.shield, super.maxshield);
}

void main() {
  Zealot zealot = Zealot(30, 60);
  zealot.autoMaticRecoveryhp();
  print(zealot.shield);
}

class Wizard {
  String name;
  int hp;
  int mp = 0;
  Wand? wand;

  Wizard({
    required this.name,
    this.hp = 0,
    this.mp = 0,
    this.wand,
  });
}

class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  });

  Wand wand1 = Wand(name: '마법사의 지팡이', power: 1);
  Wizard wizard = Wizard(name: '간달프', hp: 100, mp: 0, wand: null);
}

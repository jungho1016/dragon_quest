void main() {
  BoyGroup boyGroup = BoyGroup('bts');
  boyGroup.sayName(); // 제 이름은 bts입니다
  print(boyGroup.name);
}

abstract interface class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName() {}
}

class BoyGroup implements IdolInterface {
  @override
  String name;

  BoyGroup(this.name);

  @override
  void sayName() {
    print('제 이름은 ${name}입니다');
  }
}

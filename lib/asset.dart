class Asset {
  String name;
  int price;

  Asset(this.name, this.price);
}

abstract class TangibleAsset extends Asset implements Thing {
  @override
  double weight;
  TangibleAsset(super.name, super.price, this.weight);

  void onWeight() {
    if (weight > 0) print('무게가 존재한다');
  }
}

class Computer extends TangibleAsset {
  String color;
  String makerName;

  Computer(
    super.name,
    super.price,
    super.weight,
    this.color,
    this.makerName,
  );

  @override
  set get(value) {}
}

class Book extends TangibleAsset {
  String color;
  String isbn;

  Book(
    super.name,
    super.price,
    super.weight,
    this.color,
    this.isbn,
  );

  @override
  set get(value) {
    // TODO: implement get
  }
}

class IntangibleAsset extends Asset {
  IntangibleAsset(super.name, super.price);
}

class Patent {}

abstract interface class Thing {
  double get weight;

  set get(value);
}

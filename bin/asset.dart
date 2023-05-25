class Asset {}

abstract class TangibleAsset extends Asset {}

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  Computer(
      {required this.name,
      required this.color,
      required this.makerName,
      required this.price});
}

class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book({
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
  });
}

class IntangibleAsset extends Asset {}

class Patent {}

class Thing {
  // double _weight;

  // double get weight => _weight;

  // Thing({required this.weight});
}

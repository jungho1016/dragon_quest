import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambrige"), 2011, 300),
  Transaction(Trader("Raoul", "Cambrige"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambrige"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambrige"), 2012, 950),
];

void main() {
  var sortedNames = transactions
      .where((transaction) => transaction.year == 2011)
      .toList()
      .map((transactions) => transactions.value)
      .toList()
    ..sort();
  print(sortedNames); // [300, 400]

  List<String> cities = transactions
      .map((transaction) => transaction.trader.city)
      .toSet()
      .toList();
  print(cities); // [Cambrige, Milan]

  var cambridgeTraders = transactions
      .where((transaction) => transaction.trader.city == "Cambrige")
      .toList()
      .map((transaction) => transaction.trader.name)
      .toSet()
      .toList()
    ..sort();
  print(cambridgeTraders); // [Alan, Brian, Raoul]

  List<String> alphabetical = transactions
      .map((transaction) => transaction.trader.name)
      .toSet()
      .toList()
    ..sort();
  print(alphabetical); // [Alan, Brian, Mario, Raoul]

  bool milanTrader =
      transactions.any((transactions) => transactions.trader.city == 'Milan');
  print(milanTrader); // true

  List<int> cambrigeValue = transactions
      .where((transactions) => transactions.trader.city == 'Cambrige')
      .toList()
      .map((transactions) => transactions.value)
      .toList();
  print(cambrigeValue); // [300, 1000, 400, 950]

  int maxtransactions =
      transactions.map((transaction) => transaction.value).reduce((max));
  print(maxtransactions); // 1000

  int mintransactions =
      transactions.map((transaction) => transaction.value).reduce((min));
  print(mintransactions); // 300
}

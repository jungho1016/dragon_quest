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

// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
// 5. 밀라노에 거래자가 있는가?
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
// 7. 전체 트랜잭션 중 최대값은 얼마인가?
// 8. 전체 트랜잭션 중 최소값은 얼마인가?

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    DateTime? publishDate,
    required this.comment,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate.year == other.publishDate.year &&
          publishDate.month == other.publishDate.month &&
          publishDate.day == other.publishDate.day;

  @override
  int get hashCode =>
      title.hashCode ^
      publishDate.year.hashCode ^
      publishDate.month.hashCode ^
      publishDate.day.hashCode;

  Book copyWith({String? title, DateTime? publishDate, String? comment}) {
    return Book(
        title: title ?? this.title,
        publishDate: publishDate ?? this.publishDate,
        comment: comment ?? this.comment);
  }
}

void main() {
  Book book1 = Book(title: "스위프트", comment: "ios");
  Book book2 = Book(title: "코틀린", comment: "Android");
  Book book3 = Book(title: "자바스크립트", comment: "Web");
  Book book4 = Book(title: "파이썬", comment: "Ai");

  Book compareBook1 = Book(title: "스위프트", comment: "SwiftUI");

  List<Book> bookList = [];
  bookList.add(book1);
  bookList.add(book2);
  bookList.add(book3);
  bookList.add(book4);
  bookList.add(compareBook1);

  print('리스트 비교');
  print(bookList[0] == bookList[4]);

  Set<Book> bookSet = {};
  bookSet.add(book1);
  bookSet.add(book2);
  bookSet.add(book3);
  bookSet.add(book4);
  bookSet.add(compareBook1);

  // campareBook1 안들어가는 것 확인
  print('셋 비교');
  for (var book in bookSet) {
    print(book.hashCode);
  }

  final Map<Book, dynamic> bookMap = {
    book1: '책1',
    book2: '책2',
    book3: '책3',
    book4: '책4',
    compareBook1: '안들어가야돼!'
  };

  print('Map 비교');
  bookMap.forEach((key, value) {
    print(key.hashCode);
  });

  //sort

  book1.publishDate = DateTime(2023, 1, 3);
  book2.publishDate = DateTime(2023, 1, 4);
  book3.publishDate = DateTime(2023, 1, 1);
  book4.publishDate = DateTime(2023, 1, 2);

  List<Book> sortBookList = [];
  sortBookList.add(book1);
  sortBookList.add(book2);
  sortBookList.add(book3);
  sortBookList.add(book4);

  print('--List 정렬');
  sortBookList.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  for (var book in sortBookList) {
    print(book.title);
    print(book.publishDate);
  }

  Set<Book> sortBookSet = {};
  sortBookSet.add(book1);
  sortBookSet.add(book2);
  sortBookSet.add(book3);
  sortBookSet.add(book4);

  print('--Set 정렬');
  List<Book> sortedSetList = sortBookSet.toList()
    ..sort((a, b) => a.publishDate.compareTo(b.publishDate));

  for (var book in sortedSetList) {
    print(book.title);
    print(book.publishDate);
  }

  final Map<Book, dynamic> sortBookMap = {
    book1: '책1',
    book2: '책2',
    book3: '책3',
    book4: '책4',
  };

  //map
  List<Book> sortedMapList = sortBookMap.keys.toList()
    ..sort((a, b) => a.publishDate.compareTo(b.publishDate));

  print('--Map 정렬');
  for (var key in sortedMapList) {
    var value = sortBookMap[key];
    print(key.title);
    print(key.publishDate);
    print(value);
  }

  //딥카피

  final deepBook1 = book1.copyWith();

  print(deepBook1.title);
  print(book1 == deepBook1);
}

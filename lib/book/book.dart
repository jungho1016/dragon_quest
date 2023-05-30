import 'package:dragon_quest/pratice/practice1.dart';

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({required this.title, required this.publishDate, required this.comment});

  Book copyWith() =>
      Book(title: title, publishDate: publishDate, comment: comment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;
}

void main() {
  Book book =
      Book(title: '객체지향', publishDate: DateTime(2023, 01, 01), comment: '무');
  Book book1 =
      Book(title: '객체지향', publishDate: DateTime(2023, 01, 02), comment: '무');
  Book book2 =
      Book(title: '객체지향', publishDate: DateTime(2022, 12, 03), comment: '무');

  List<Book> bookList = [book, book1, book2];
  List<DateTime> dateTimelist = [
    book.publishDate,
    book1.publishDate,
    book2.publishDate
  ];
  print(book2.publishDate);
  dateTimelist.sort((a, b) => a.compareTo(b));
  print(
      dateTimelist); //  2022-12-03 00:00:00.000, 2023-01-01 00:00:00.000, 2023-01-02 00:00:00.000]

  print(book.hashCode); // 549688615
  print(book1.hashCode); // 549688615
  print(book == book1); // true

  List<Book> listBook = [book];
  for (var e in listBook) {
    print(e.title.hashCode); // 549697654
    print(e.publishDate.hashCode); // 11601
    print(e.comment.hashCode); // 227108572
    List<Book> listBook1 = [book1];
    for (var e in listBook1) {
      print(e.title.hashCode); // 549697654
      print(e.publishDate.hashCode); // 11601
      print(e.comment.hashCode); // 926660420
    }

    print(listBook.hashCode); // 388126860
    print(listBook1.hashCode); // 982504581
    print(listBook == listBook1); // false

    Map<Book, dynamic> mapBook = {book: 1};
    Map<Book, dynamic> mapBook1 = {book1: 1};
    for (var e in mapBook.entries) {
      print(e.key.title.hashCode); // 549697654
      print(e.key.publishDate.hashCode); // 11601
      print(e.key.comment.hashCode); // 227108572

      for (var e in mapBook1.entries) {
        print(e.key.title.hashCode); //  549697654
        print(e.key.publishDate.hashCode); // 11601
        print(e.key.comment.hashCode); //926660420
      }
      print(mapBook.hashCode); // 786023906 , 값이 계속 변경
      print(mapBook1.hashCode); // 156339696 , 값이 계속 변경
      print(mapBook == mapBook1); // false
    }

    Set<Book> setBook = {book};
    for (var e in setBook) {
      print(e.title.hashCode); // 549697654
      print(e.publishDate.hashCode); // 11601
      print(e.comment.hashCode); // 227108572 , 값이 계속 변경
      Set<Book> setBook1 = {book1};
      for (var e in setBook1) {
        print(e.title.hashCode); // 549697654
        print(e.publishDate.hashCode); // 11601
        print(e.comment.hashCode); // 926660420 , 값이 계속 변경
      }

      print(listBook.hashCode); // 786023906 , 값이 계속 변경
      print(listBook1.hashCode); // 156339696 , 값이 계속 변경
      print(listBook == listBook1); // false
    }
  }
}

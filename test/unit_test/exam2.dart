import 'package:dragon_quest/unit_test/exam2.dart';
import 'package:test/test.dart';

void main() {
  test('짝수 test', () {
    Even even = Even();
    expect(even.isEven(1), false);
    expect(even.isEven(2), true);
    expect(even.isEven(3), false);
    expect(even.isEven(4), true);
  });
}

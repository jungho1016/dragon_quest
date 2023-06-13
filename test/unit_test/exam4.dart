import 'package:dragon_quest/unit_test/exam4.dart';
import 'package:test/test.dart';

void main() {
  test('reverse test', () {
    ReverseString reverseString = ReverseString();

    expect(reverseString.reverseString(''), '');
    expect(reverseString.reverseString('hellow'), 'wolleh');
    expect(reverseString.reverseString('Hellow'), 'wolleH');
  });
}

import 'package:dragon_quest/unit_test/exam3.dart';
import 'package:test/test.dart';

void main() async {
  test('최댓값 test', () {
    FindMax findMax = FindMax();
    List<int> x = [2, 5, 1, 9, 3];
    List<int> y = [2, 25, 1, 19, 3];

    print(findMax.findmax(x));
    expect(findMax.findmax(x), 9);
    expect(findMax.findmax(y), 25);
  });
}

import 'package:dragon_quest/unit_test/exam1.dart';
import 'package:test/test.dart';

void main() {
  test('test', () {
    // 준비
    Bank bank1 = Bank.fromJson(
        {"name": "홍길동", "address": "서울시 어쩌구 저쩌구", "phone": "010-1111-2222"});

    // 실행
    expect(bank1.name, "홍길동");
    expect(bank1.address, "서울시 어쩌구 저쩌구");
    expect(bank1.phone, "010-1111-2222");
  });
}

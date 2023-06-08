import 'dart:async';

Future<void> main() async {
  List<Future<int>> futures = [
    getInt1(),
    getInt2(),
    getInt3(),
    getInt4(),
    getInt5()
  ];
  print(futures);
  DateTime start = DateTime.now(); // 작업 시작 시간 기록

  List<int> results = await Future.wait(futures);

  DateTime end = DateTime.now(); // 작업 종료 시간 기록
  Duration duration = end.difference(start); // 소요된 시간 계산

  print('Results: $results');
  print('Total Duration: ${duration.inSeconds} seconds');
}

// getInt1, getInt2, getInt3, getInt4, getInt5는 이전과 동일하게 작성됨..
Future<int> getInt1() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}

Future<int> getInt2() async {
  await Future.delayed(Duration(seconds: 1));
  return 2;
}

Future<int> getInt3() async {
  await Future.delayed(Duration(seconds: 1));
  return 3;
}

Future<int> getInt4() async {
  await Future.delayed(Duration(seconds: 1));
  return 4;
}

Future<int> getInt5() async {
  await Future.delayed(Duration(seconds: 1));
  return 5;
}

import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final file = File(fileName);
  await file.writeAsBytes(bytes);
  return file;
}

Future<void> main() async {
  print('다운로드 시작');
  print('다운로드 끝');
  Stopwatch stopwatch = Stopwatch()..start();
  await downloadImage('https://alimipro.com/favicon.ico');
  await downloadImage('https://alimipro.com/assets/device_capture.png');
  await downloadImage('https://alimipro.com/assets/ios_capture.png');

  print('==============================');
  print('소요 시간 : ${stopwatch.elapsed}');
}

// 병렬 : 0:00:00.145751
// await : 0:00:00.148046
// await : 0:00:00.170787
//
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:http/http.dart' as http;
//
// Future<Uint8List> downloadImage(String url) async {
//   final response = await http.get(Uri.parse(url));
//   return response.bodyBytes;
// }
//
// Future<File> saveFile(Uint8List bytes, String fileName) async {
//   final file = File(fileName);
//   await file.writeAsBytes(bytes);
//   return file;
// }
//
// Future<void> main() async {
//   print('다운로드 시작');
//   print('다운로드 끝');
//   Stopwatch stopwatch = Stopwatch()..start();
//
//   final futures = <Future>[];
//   futures.add(downloadImage('https://alimipro.com/favicon.ico'));
//   futures.add(downloadImage('https://alimipro.com/assets/device_capture.png'));
//   futures.add(downloadImage('https://alimipro.com/assets/ios_capture.png'));
//
//   await Future.wait(futures);
//
//   print('==============================');
//   print('소요 시간: ${stopwatch.elapsed}');
// }

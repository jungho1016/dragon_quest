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
  downloadImage('https://alimipro.com/favicon.ico');
  final filePath = 'icon.ico';
  final file = File(filePath);
  final fileSize = file.lengthSync();

  saveFile(
      await downloadImage('https://alimipro.com/favicon.ico'), '\icon.ico');
  print('==============================');
  print('소요 시간 : ${stopwatch.elapsed}');
  print('용량 : ${fileSize}bytes');
}

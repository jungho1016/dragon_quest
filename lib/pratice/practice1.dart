import 'dart:io';

void main() {
  fileWrite();
  fileRead();
}

void fileRead() {
  // 파일 열기
  final file = File('file1.txt');
  // 파일 읽기
  final text = file.readAsStringSync();
  print(text);
}

void fileWrite() {
  final file = File('file1.txt');
  // 파일 쓰기
  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
}

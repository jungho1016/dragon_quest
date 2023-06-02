import 'dart:io';

void main() {
  String source = 'save.txt';
  String target = 'text.txt';
  copy(source, target);
}

void fileRead() {
  // 파일 열기
  final file = File('save.txt');
  final text = file.readAsStringSync();
  print(text);
}

void fileWrite() {
  final file = File('save.txt');

  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
  file.writeAsStringSync('Hello, World\n', mode: FileMode.append);
}

void copy(String source, String target) {
  File sourcefile = File(source);
  File targetfile = File(target);

  String text = sourcefile.readAsStringSync();
  targetfile.writeAsStringSync(text);
  print('파일 복사 성공');
}

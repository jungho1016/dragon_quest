void main() {
  try {
    final numString = '10.5';
    int num = int.parse(numString);
    print(num);
  } catch (e) {
    throw Exception(0);
  }
}

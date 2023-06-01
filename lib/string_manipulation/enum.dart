enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  KeyType key;

  E? _data;
  int usesNumber = 0;

  StrongBox(this.key);

  void put(E data) {
    _data = data;
  }

  E? get(int i) {
    usesNumber += 1;
    print(usesNumber);
    return _data;
  }
}

void main() {
  StrongBox<String> strongBox = StrongBox<String>(KeyType.padlock);

  for (int i = 0; i <= 1023; i++) {
    strongBox.get(i);
  }
}

enum KeyType { padlock, button, dial, finger }

class StrongBox<E> {
  E? _data;
  KeyType keyType;

  StrongBox(this.keyType);

  void put(E data) {
    _data = data;
  }

  E? get(int count) {
    switch (this.keyType) {
      case KeyType.padlock:
        if (count == 1025) {
          return _data;
        }
        // get에서 null하는걸 빠진다.

        break;
      case KeyType.button:
        if (count == 10001) {
          return _data;
        }

        break;
      case KeyType.dial:
        if (count == 30001) {
          return _data;
        }

        break;
      case KeyType.finger:
        if (count == 1000001) {
          return _data;
        }

        break;
    }
    return null;
  }
}

void main() {
  int count = 0;
  KeyType keyType = KeyType.finger;

  final StrongBox strongBox = StrongBox(keyType);
  strongBox.put('Congrats');

  for (int i = 0; i < 1000050; i++) {
    final data = strongBox.get(count);
    if (data != null) {
      print('$keyType $i : $data');
    }
    count++;
  }
}

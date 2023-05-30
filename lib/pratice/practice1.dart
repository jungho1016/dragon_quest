void main() {
  // 13-2 문제
  X obj = A();
  obj.a(); // Aa
  Y y1 = A();
  Y y2 = B();
  y1.a(); // Aa
  y2.a(); // Ba
  y2.b();
  List<Y> y = [y1, y2];
  y[0].b();
  y[1].b();

  for (Y y3 in y) {
    y3.b();
  }

  // 13-3문제
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

abstract interface class X {
  void a();
}

abstract interface class Y implements X {
  void b();
}

abstract interface class Thing {
  double _weight = 0;

  set weight(double value) {
    _weight = value;
  }

  double get weight => _weight;
}

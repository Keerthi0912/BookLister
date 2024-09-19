class Counter {
  int _counterValue = 0;
  int _totalClicks = 0;

  int get value => _counterValue;
  int get clicks => _totalClicks;

  void intCounter() => _counterValue++;
  void decCounter() => _counterValue--;
  void intClicks() => _totalClicks++;

  void reset() {
    _counterValue = _totalClicks = 0;
  }
}
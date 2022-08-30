import 'package:flutter/foundation.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setCount() {
    _count++;
    notifyListeners();
  }
}

class SliderProvider extends ChangeNotifier {
  double _value = 1.0;
  double get value => _value;
  void setValue(val) {
    _value = val;
    notifyListeners();
  }
}

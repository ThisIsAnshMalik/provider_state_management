import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setCount() {
    _count++;
    notifyListeners();
  }
}

class SliderProvider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;
  void setValue(val) {
    _value = val;
    notifyListeners();
  }
}

class FavouriteProvider with ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;

  void addFavourite(int index) {
    _selectedItem.add(index);
    notifyListeners();
  }

  void removeFavourite(int index) {
    _selectedItem.remove(index);
    notifyListeners();
  }
}

class ThemeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get thememode => _themeMode;

  void setTheme(thememode) {
    _themeMode = thememode;
    notifyListeners();
  }
}

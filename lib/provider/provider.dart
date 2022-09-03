import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

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

class AuthProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    try {
      setLoading(true);
      Response response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": email,
        "password": password,
      });

      if (response.statusCode == 200) {
        print("Login successfuly");
        setLoading(false);
      } else {
        print("Login failed");
        setLoading(false);
      }
    } catch (e) {
      print("login fail error : ${e.toString()}");
      setLoading(false);
    }
  }
}

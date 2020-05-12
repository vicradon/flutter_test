import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ThemeModel with ChangeNotifier {
  bool darkMode = false;
  Brightness brightness;
  
  void toggleMode(val) {
    darkMode = val;
    if (darkMode) {
      brightness = Brightness.dark;
    } else {
      brightness = Brightness.light;
    }
    notifyListeners();
  }
}

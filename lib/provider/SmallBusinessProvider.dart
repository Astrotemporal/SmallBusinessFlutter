import 'package:flutter/foundation.dart';
import 'package:smallbusinessflutter/models/Themes.dart';
import 'package:smallbusinessflutter/screens/InfoScreen/Information.dart';

class SmallBusinessProvider extends ChangeNotifier {
  Data prefs = Data();

  Themes _theme = Data.DEFAULT_THEME;
  bool _newUser = true;

  Themes get theme => _theme;
  bool get newUser => _newUser;

  int navIndex = 0;

  set theme(Themes t) {
    _theme = t;
    prefs.setTheme(t);
    notifyListeners();
  }
  set newUser(bool b) {
    _newUser = b;
    prefs.setNew(b);
  }
  setNavIndex(int i) {
    navIndex = i;
    notifyListeners();
  }
}
import 'package:flutter/foundation.dart';
import 'package:smallbusinessflutter/models/Themes.dart';
import 'package:smallbusinessflutter/screens/InfoScreen/Information.dart';

class SmallBusinessProvider extends ChangeNotifier {
  Data prefs = Data();
  Themes _theme = Data.DEFAULT_THEME;

  Themes get theme => _theme;

  set theme(Themes t) {
    _theme = t;
    prefs.setTheme(t);
    notifyListeners();
  }
}
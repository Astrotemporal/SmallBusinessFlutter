import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smallbusinessflutter/models/Themes.dart';

class Data {
  static const THEME = "THEME";

  static const DEFAULT_THEME = Themes.light;

  setTheme(Themes t) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(THEME, t.name);
  }
  Future<Themes> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return ThemesExt.enumerate(prefs.getString(THEME)) ?? DEFAULT_THEME;
  }
}

class Preferences extends StatelessWidget{
  static const routeName = "/prefs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smallbusinessflutter/models/Themes.dart';
import 'package:smallbusinessflutter/screens/HomeScreen/Home.dart';
import 'package:smallbusinessflutter/screens/MapScreen/Map.dart';
import 'package:smallbusinessflutter/widgets/Navbar.dart';

class Data {
  static const THEME = "THEME";
  static const NEWUSER = "NEWUSER";

  static const DEFAULT_THEME = Themes.light;
  static const VIEWS = [Home.routeName, Map.routeName, Preferences.routeName];

  setTheme(Themes t) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(THEME, t.name);
  }
  Future<Themes> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return ThemesExt.enumerate(prefs.getString(THEME)) ?? DEFAULT_THEME;
  }
  setNew(bool b) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(NEWUSER, b);
  }
  Future<bool> getNew() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(NEWUSER) ?? true;
  }
}

class Preferences extends StatelessWidget{
  static const routeName = "/prefs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [

            ],
          )
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Themes {
  hackUCI,
  light,
  dark,
  system,
}

extension ThemesExt on Themes {
  ThemeData get theme {
    switch (this) {
      case Themes.hackUCI:
        return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.indigo,
          backgroundColor: Colors.indigo,
          textTheme: GoogleFonts.montserratTextTheme(),
        );
      case Themes.dark:
        return ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          backgroundColor: Colors.black,
          textTheme: GoogleFonts.montserratTextTheme(),
        );
      case Themes.light:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          backgroundColor: Color(0xffF1F5FB),
          textTheme: GoogleFonts.montserratTextTheme(),
        );
      default:
        return null;
    }
  }
  String get name {
    switch (this) {
      case Themes.hackUCI:
        return "hackuci";
      case Themes.dark:
        return "dark";
      case Themes.light:
        return "light";
      default:
        return "";
    }
  }
  static Themes enumerate(String value) {
    switch (value) {
      case "hackuci":
        return Themes.hackUCI;
      case "dark":
        return Themes.dark;
      case "light":
        return Themes.light;
      default:
        return null;
    }
  }
}


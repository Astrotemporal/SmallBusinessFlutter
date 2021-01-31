import 'dart:ui';
import 'package:flutter/material.dart';

enum Themes {
  HACK_UCI,
  LIGHT,
  DARK,
}

extension ThemesExtension on Themes {
  ThemeData get theme {
    switch (this) {
      case Themes.HACK_UCI:
        return null;
      case Themes.DARK:
        return null;
      case Themes.LIGHT:
        return ThemeData(
          primaryColor: Colors.white,
        );
    }
  }
}


import 'package:flutter/material.dart';

class ColorSchemes {
  static ColorScheme get ligthColor {
    return ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.blue,
      primaryVariant: Colors.blue[900],
      secondary: Colors.yellow,
      secondaryVariant: Colors.yellow[900],
      onBackground: Colors.black,
      onSurface: Colors.black,
      onPrimary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      onSecondary: Colors.black,
      surface: Colors.white,
      background: Colors.white,
    );
  }
}

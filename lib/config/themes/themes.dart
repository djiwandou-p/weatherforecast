import 'package:flutter/material.dart';
import 'package:weatherforecast/config/themes/color_schemes.dart';

class Themes {
  static ThemeData defaultThemes(BuildContext context) {
    return ThemeData(
      colorScheme: ColorSchemes.ligthColor(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        textTheme: Theme.of(context).textTheme,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      canvasColor: Theme.of(context).colorScheme.surface,
      textTheme: TextTheme(
        button: TextStyle(fontSize: 14, color: Colors.white),
        caption: TextStyle(fontSize: 14, color: Colors.black87),
        bodyText1: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(fontSize: 14, color: Colors.black87),
        headline1: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        headline4: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        headline5: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return Theme.of(context).colorScheme.primary.withOpacity(0.6);
              return Theme.of(context).colorScheme.primary;
            },
          ),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
          foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onPrimary),
          textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.button),
          minimumSize: MaterialStateProperty.all(Size(0, 38)),
        ),
      ),
    );
  }
}

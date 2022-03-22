import 'package:flutter/material.dart';

ThemeData customLightTheme() {
  TextTheme _customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
          fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    textTheme: _customLightThemesTextTheme(lightTheme.textTheme),
    primaryColor: const Color(0xffce107c),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
    canvasColor: Colors.yellow,
  );
}

ThemeData customDarkTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    primaryColor: Colors.black38,
  );
}

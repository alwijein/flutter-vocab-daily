import 'package:flutter/material.dart';
import 'package:vocab_daily/shared/shared.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kScaffoldColor,
    elevation: 0.0,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kSecondaryColor,
        fontSize: 18,
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:vocab_daily/shared/shared.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
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

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10.0,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 40,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}

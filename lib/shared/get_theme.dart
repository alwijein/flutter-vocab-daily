part of 'shared.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    iconTheme: IconThemeData(
      color: kPrimaryColor,
    ),
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
  // OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(28),
  //   borderSide: BorderSide(color: kTextColor),
  //   gapPadding: 10.0,
  // );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
  );
}

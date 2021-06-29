import 'package:flutter/material.dart';
import 'package:vocab_daily/navbar.dart';
import 'package:vocab_daily/theme.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: NavBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc.dart';
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
    return BlocProvider(
      create: (context) => BookmarksBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vocab Daily',
        theme: theme(),
        home: NavBar(),
      ),
    );
  }
}

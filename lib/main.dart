import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/navbar.dart';
import 'package:vocab_daily/screens/wrapper/wrapper.dart';
import 'package:vocab_daily/shared/shared.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookmarksBloc(),
        ),
        BlocProvider(
          create: (context) => PageBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vocab Daily',
        theme: theme(),
        home: Wrapper(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/navbar.dart';
import 'package:vocab_daily/screens/profile_configuration/profile_configuration.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  SharedPreferences? sp;

  bool isCheck = false;

  @override
  void initState() {
    super.initState();
    Future<SharedPreferences> sp = SharedPreferences.getInstance();
    sp.then((sp) {
      isCheck = sp.getBool('first') ?? false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<PageBloc>().add(GoToAvatarScreen());
    return BlocBuilder<PageBloc, PageState>(builder: (_, pageState) {
      return (pageState is OnAvatarScreen && isCheck == false)
          ? ProfileConfiguration()
          : NavBar();
    });
  }
}

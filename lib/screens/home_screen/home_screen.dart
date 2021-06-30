import 'package:flutter/material.dart';
import 'package:vocab_daily/screens/home_screen/components/body.dart';
import 'package:vocab_daily/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

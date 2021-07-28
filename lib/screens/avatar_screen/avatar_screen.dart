import 'package:flutter/material.dart';
import 'package:vocab_daily/screens/avatar_screen/components/body.dart';
import 'package:vocab_daily/config/size_config.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

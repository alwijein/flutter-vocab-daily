import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/screens/profile_configuration/components/body.dart';

class ProfileConfiguration extends StatelessWidget {
  const ProfileConfiguration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/bloc/page_bloc/page_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/screens/setting_screens/components/card_setting.dart';
import 'package:vocab_daily/screens/setting_screens/components/profile_edit.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
          vertical: getPropertionateScreenHeight(20),
        ),
        child: Column(
          children: [
            ProfileEdit(),
            Column(
              children: [
                CardSetting(
                  title: 'CONTENT',
                  subTitle: 'Favorite',
                  iconData: Icons.favorite_border_outlined,
                ),
                CardSetting(
                  title: 'INFORMASI',
                  subTitle: 'About',
                  iconData: Icons.info_outline,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

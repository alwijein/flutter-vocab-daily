import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';

class CardSetting extends StatelessWidget {
  const CardSetting({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.iconData,
  }) : super(key: key);
  final String title, subTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return Padding(
      padding: EdgeInsets.only(bottom: getPropertionateScreenHeight(30)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: getPropertionateScreenHeight(18)),
            child: Container(
              width: double.infinity,
              color: kAccentColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: getPropertionateScreenWidht(15),
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(iconData, color: Colors.black),
              Spacer(flex: 1),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: getPropertionateScreenWidht(18),
                ),
              ),
              Spacer(
                flex: 20,
              ),
              SvgPicture.asset(
                'assets/icons/back_arrow.svg',
                color: kTextColor,
              ),
              // SwitcherButton(
              //   onColor: kPrimaryColor,
              //   offColor: kPrimaryLightColor,
              //   value: isDarkMode,
              //   onChange: (value) {
              //     isDarkMode = value;
              //   },
              // )
            ],
          )
        ],
      ),
    );
  }
}

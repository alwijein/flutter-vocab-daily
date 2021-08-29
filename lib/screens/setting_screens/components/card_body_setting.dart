import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';

class CardBodySetting extends StatelessWidget {
  const CardBodySetting(
      {Key? key,
      required this.iconData,
      required this.subTitle,
      required this.iconPath,
      required this.press})
      : super(key: key);

  final IconData iconData;
  final String subTitle, iconPath;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getPropertionateScreenHeight(10)),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Row(
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
                iconPath,
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
          ),
        ),
      ),
    );
  }
}

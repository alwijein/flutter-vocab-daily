import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';

class CardHeaderSetting extends StatelessWidget {
  const CardHeaderSetting({
    Key? key,
    required this.title,
    required this.item,
  }) : super(key: key);
  final String title;
  final List<Widget> item;
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
          Column(
            children: item,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/utils/utils.dart';

class HistoryVocabCard extends StatelessWidget {
  const HistoryVocabCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    ColorRand _colorRand = new ColorRand();

    return Container(
      margin: EdgeInsets.only(bottom: getPropertionateScreenWidht(18)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            stops: [0.03, 0.03], colors: [_colorRand.randColor, Colors.white]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenHeight(20),
          horizontal: getPropertionateScreenWidht(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontSize: getPropertionateScreenWidht(18),
          ),
        ),
      ),
    );
  }
}

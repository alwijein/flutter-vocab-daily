import 'package:flutter/material.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/size_config.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(26)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Vocab Today",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: getPropertionateScreenWidht(18),
            ),
          ),
          Text(
            "more",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: getPropertionateScreenWidht(18),
            ),
          ),
        ],
      ),
    );
  }
}

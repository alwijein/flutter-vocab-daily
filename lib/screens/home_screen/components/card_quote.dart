import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';

class CardQuote extends StatelessWidget {
  const CardQuote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenHeight(158),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getPropertionateScreenHeight(20),
          horizontal: getPropertionateScreenWidht(20),
        ),
        child: Row(
          children: [
            Text(
              "Do something\ntoday that your future\nself will thank you for",
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: getPropertionateScreenWidht(17),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/quote_head 1.svg',
              height: getPropertionateScreenHeight(110),
            ),
          ],
        ),
      ),
    );
  }
}

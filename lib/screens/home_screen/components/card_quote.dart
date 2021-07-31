import 'package:animated_text_kit/animated_text_kit.dart';
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
            Expanded(
              flex: 3,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Do something today that your future\nself will thank you for',
                    textStyle: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getPropertionateScreenWidht(17),
                    ),
                    speed: Duration(milliseconds: 120),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                'assets/icons/quote_head 1.svg',
                height: getPropertionateScreenHeight(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

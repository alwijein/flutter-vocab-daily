import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';

class HeadlingProfile extends StatelessWidget {
  const HeadlingProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getPropertionateScreenWidht(18),
                ),
              ),
              Text(
                "Alwi Jein.",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getPropertionateScreenWidht(20),
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: SvgPicture.asset('assets/icons/avatar/man.svg'),
          ),
        ],
      ),
    );
  }
}

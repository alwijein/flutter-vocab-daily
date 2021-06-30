import 'package:flutter/material.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/size_config.dart';

class SearchRounded extends StatelessWidget {
  const SearchRounded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(26)),
      child: Container(
        height: getPropertionateScreenHeight(55),
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kSecondaryColorLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: kPrimaryColor,
                size: getPropertionateScreenWidht(28),
              ),
              Text(
                'Search',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: getPropertionateScreenWidht(18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

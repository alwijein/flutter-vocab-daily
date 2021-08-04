import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/shared/shared.dart';

class RoundedFill extends StatelessWidget {
  const RoundedFill({
    Key? key,
    required this.content,
    this.isFilled = false,
  }) : super(key: key);

  final String content;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenWidht(20),
        vertical: getPropertionateScreenHeight(8),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
          vertical: getPropertionateScreenHeight(10),
        ),
        width: double.infinity,
        height: isFilled == true
            ? getPropertionateScreenHeight(200)
            : getPropertionateScreenHeight(50),
        decoration: BoxDecoration(
          color: kSecondaryColorLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: isFilled == true
            ? TextField(
                style: TextStyle(
                  fontSize: getPropertionateScreenHeight(16),
                ),
                decoration: InputDecoration(
                  hintText: content,
                  hintStyle: TextStyle(
                    fontSize: getPropertionateScreenWidht(16),
                  ),
                  border: InputBorder.none,
                ),
              )
            : Text(
                content,
                style: TextStyle(fontSize: getPropertionateScreenWidht(16)),
              ),
      ),
    );
  }
}

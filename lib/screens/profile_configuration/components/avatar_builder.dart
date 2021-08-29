import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/screens/profile_configuration/components/GridViewAvatar1.dart';
import 'package:vocab_daily/screens/profile_configuration/components/GridViewAvatar2.dart';
import 'package:vocab_daily/shared/shared.dart';

class AvatarBuilder extends StatefulWidget {
  const AvatarBuilder({
    Key? key,
  }) : super(key: key);

  @override
  _AvatarBuilderState createState() => _AvatarBuilderState();
}

int currentPage = 0;

class _AvatarBuilderState extends State<AvatarBuilder> {
  @override
  Widget build(BuildContext context) {
    List<Widget> test = [
      GridViewAvatar1(),
      GridViewAvatar2(),
    ];
    return Column(
      children: [
        Container(
          width: getPropertionateScreenWidht(400),
          height: getPropertionateScreenHeight(290),
          child: PageView.builder(
            itemCount: 2,
            itemBuilder: (_, index) {
              return test[index];
            },
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: getPropertionateScreenHeight(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => dotBuilder(index),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AnimatedContainer dotBuilder(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

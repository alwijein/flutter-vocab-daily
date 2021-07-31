import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/user_model.dart';
import 'package:vocab_daily/screens/avatar_screen/components/avatar_builder.dart';
import 'package:vocab_daily/screens/avatar_screen/components/profile_filled_name.dart';
import 'package:vocab_daily/shared/shared.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getPropertionateScreenWidht(20),
              vertical: getPropertionateScreenHeight(60),
            ),
            child: Column(
              children: [
                ProfileFilledName(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getPropertionateScreenHeight(40),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 7,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: AvatarBuilder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('selanjutnya'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

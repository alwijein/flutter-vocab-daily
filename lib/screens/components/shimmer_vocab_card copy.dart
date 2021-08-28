import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:vocab_daily/config/size_config.dart';

class ShimmerVocabCard extends StatelessWidget {
  const ShimmerVocabCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(23),
      ),
      child: Shimmer(
        duration: Duration(seconds: 3),
        interval: Duration(seconds: 1),
        color: Colors.white,
        enabled: true, //Default value
        direction: ShimmerDirection.fromLTRB(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: getPropertionateScreenHeight(20),
              horizontal: getPropertionateScreenWidht(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: getPropertionateScreenWidht(250),
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(10),
                ),
                Container(
                  width: getPropertionateScreenWidht(200),
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

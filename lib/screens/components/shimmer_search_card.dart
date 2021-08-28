import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:vocab_daily/config/size_config.dart';

class ShimmerSearchCard extends StatelessWidget {
  const ShimmerSearchCard({Key? key}) : super(key: key);

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
        enabled: true, //Default valueq 
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
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: getPropertionateScreenWidht(200),
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: getPropertionateScreenWidht(20),
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
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

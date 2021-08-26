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
        duration: Duration(seconds: 1), 
        interval: Duration(seconds: 1),
        color: Colors.white,
        colorOpacity: 0, 
        enabled: true, //Default value
        direction: ShimmerDirection.fromLTRB(),
        child: Container(
          height: 70,
          
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: getPropertionateScreenHeight(20),
              horizontal: getPropertionateScreenWidht(20),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/detail_screen/detail_screen.dart';
import 'package:vocab_daily/services/services.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/utils/utils.dart';

class VocabCard extends StatelessWidget {
  const VocabCard({
    Key? key,
    required this.vocabModel,
    required this.title,
    required this.subTitle,
    required this.press,
  }) : super(key: key);

  final VocabModel vocabModel;
  final String title, subTitle;
  final Function press;

  @override
  Widget build(BuildContext context) {
    ColorRand _colorRand = new ColorRand();

    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(23),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return DetailScreen(vocabModel: vocabModel);
            }),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                stops: [0.03, 0.03],
                colors: [_colorRand.randColor, Colors.white]),
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
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: getPropertionateScreenWidht(18),
                        ),
                      ),
                      Text(
                        subTitle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   child: FavoriteButton(
                //     valueChanged: press,
                //     iconSize: 40.0,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

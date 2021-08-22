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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  color: _colorRand.randColor,
                  width: getPropertionateScreenWidht(13),
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 50,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getPropertionateScreenHeight(20),
                horizontal: getPropertionateScreenWidht(10),
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
                  Expanded(
                    flex: 1,
                    child: FavoriteButton(
                      valueChanged: press,
                      iconSize: 35.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

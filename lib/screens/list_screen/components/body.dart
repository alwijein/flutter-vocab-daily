import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
          vertical: getPropertionateScreenHeight(20),
        ),
        child: ListView.builder(
          itemCount: VocabModel.vocabModel.length,
          itemBuilder: (_, index) {
            return VocabCard(
              title: VocabModel.vocabModel[index].vocabName,
              subTitle: VocabModel.vocabModel[index].description,
              press: () {},
            );
          },
        ),
      ),
    );
  }
}

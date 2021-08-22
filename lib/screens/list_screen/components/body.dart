import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/services/services.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConnectionServices connectionServices = new ConnectionServices();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
          vertical: getPropertionateScreenHeight(20),
        ),
        child: FutureBuilder<List<VocabModel>>(
          future: connectionServices.getApiRoot(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  VocabModel vocabModel = snapshot.data![index];
                  return VocabCard(
                    vocabModel: vocabModel,
                    title: vocabModel.vocabName,
                    subTitle: vocabModel.vocabName,
                    press: () {},
                  );
                },
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text("Loading.."),
              ],
            );
          },
        ),
      ),
    );
  }
}

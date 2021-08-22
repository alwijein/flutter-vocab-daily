import 'package:flutter/material.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/search_rounded.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/screens/home_screen/components/card_quote.dart';
import 'package:vocab_daily/screens/home_screen/components/headling_profile.dart';
import 'package:vocab_daily/screens/home_screen/components/read_more.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/services/services.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ConnectionServices connectionServices = new ConnectionServices();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            getPropertionateScreenWidht(20),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                HeadlingProfile(),
                SearchRounded(),
                CardQuote(),
                ReadMore(),
                Container(
                  width: SizeConfig.screenWidth,
                  height: getPropertionateScreenHeight(275),
                  child: FutureBuilder<List<VocabModel>>(
                      future: connectionServices.getApiRoot(),
                      builder: (_, snapshoot) {
                        if (snapshoot.hasData) {
                          print('data' + snapshoot.data.toString());
                          return ListView.builder(
                              physics: NeverScrollableScrollPhysics(
                                parent: ScrollPhysics(),
                              ),
                              itemCount: 2,
                              itemBuilder: (_, index) {
                                VocabModel vocabModel = snapshoot.data![index];
                                return VocabCard(
                                  vocabModel: vocabModel,
                                  title: vocabModel.vocabName,
                                  subTitle: vocabModel.arti,
                                  press: () {},
                                );
                              });
                        }
                        return CircularProgressIndicator();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

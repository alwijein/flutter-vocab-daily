import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/search_rounded.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/screens/home_screen/components/card_quote.dart';
import 'package:vocab_daily/screens/home_screen/components/headling_profile.dart';
import 'package:vocab_daily/screens/home_screen/components/read_more.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (_, index) {
                        VocabModel vocabModel = vocabModels[index];

                        return VocabCard(
                          vocabModel: vocabModel,
                          title: vocabModels[index].vocabName,
                          subTitle: vocabModels[index].description,
                          press: (bool value) {
                            // vocabModels[index].status = value;

                            // context.read<BookmarksBloc>().add(
                            //     BookmarksActivated(
                            //         status: value, count: index));

                            print('state ' +
                                vocabModels[index].vocabName +
                                vocabModels[index].status.toString());
                          },
                        );
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

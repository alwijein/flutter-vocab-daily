import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vocab_daily/models/histories_model.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/history_vocab_card.dart';
import 'package:vocab_daily/screens/components/search_rounded.dart';
import 'package:vocab_daily/screens/components/shimmer_vocab_card%20copy.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/screens/home_screen/components/card_quote.dart';
import 'package:vocab_daily/screens/home_screen/components/headling_profile.dart';
import 'package:vocab_daily/screens/home_screen/components/read_more.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/screens/list_screen/list_screen.dart';
import 'package:vocab_daily/screens/setting_screens/components/story_vocab.dart';
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
                ReadMore(
                  title: 'Vocab Today',
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return ListScreen();
                    }));
                  },
                ),
                FutureBuilder<List<VocabModel>>(
                  future: connectionServices.getApiRoot(),
                  builder: (_, snapshoot) {
                    if (snapshoot.hasData) {
                      print('has data: ${snapshoot.hasData}');
                      if (snapshoot.data!.length >= 2) {
                        return Container(
                          height: getPropertionateScreenHeight(275),
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(
                                parent: ScrollPhysics(),
                              ),
                              itemCount: 2,
                              itemBuilder: (_, index) {
                                VocabModel vocabModel = snapshoot.data![
                                    Random().nextInt(snapshoot.data!.length)];
                                return VocabCard(
                                  vocabModel: vocabModel,
                                  title: vocabModel.vocabName,
                                  subTitle: vocabModel.arti,
                                  press: () {},
                                );
                              }),
                        );
                      } else {
                        return Column(
                          children: snapshoot.data!
                              .map((e) => VocabCard(
                                    vocabModel: e,
                                    title: e.vocabName,
                                    subTitle: e.arti,
                                    press: () {},
                                  ))
                              .toList(),
                        );
                      }
                    }
                    return Container(
                      height: getPropertionateScreenHeight(275),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(
                          parent: ScrollPhysics(),
                        ),
                        children: [
                          ShimmerVocabCard(),
                          ShimmerVocabCard(),
                        ],
                      ),
                    );
                  },
                ),
                ReadMore(
                    title: 'History',
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return StoryVocab();
                      }));
                    }),
                FutureBuilder<List<HistoriesModel>>(
                  future: connectionServices.getHistories(),
                  builder: (_, snapshoot) {
                    if (snapshoot.hasData) {
                      print('has data: ${snapshoot.hasData}');
                      if (snapshoot.data!.length >= 2) {
                        return Container(
                          height: getPropertionateScreenHeight(200),
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(
                                parent: ScrollPhysics(),
                              ),
                              itemCount: 2,
                              itemBuilder: (_, index) {
                                HistoriesModel vocabModel =
                                    snapshoot.data![index];
                                return HistoryVocabCard(
                                  title: vocabModel.vocab.toString(),
                                );
                              }),
                        );
                      } else {
                        return Column(
                          children: snapshoot.data!
                              .map((e) => HistoryVocabCard(
                                    title: e.vocab.toString(),
                                  ))
                              .toList(),
                        );
                      }
                    }
                    return Container(
                      height: getPropertionateScreenHeight(200),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(
                          parent: ScrollPhysics(),
                        ),
                        children: [
                          ShimmerVocabCard(),
                          ShimmerVocabCard(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

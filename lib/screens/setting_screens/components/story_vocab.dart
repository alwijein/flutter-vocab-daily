import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/histories_model.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/history_vocab_card.dart';
import 'package:vocab_daily/screens/components/shimmer_vocab_card%20copy.dart';
import 'package:vocab_daily/services/services.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/utils/utils.dart';

class StoryVocab extends StatelessWidget {
  const StoryVocab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConnectionServices connectionServices = new ConnectionServices();
    return Scaffold(
      appBar: AppBar(
        title: Text('History Vocab'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(getPropertionateScreenWidht(20)),
          child: FutureBuilder<List<HistoriesModel>>(
              future: connectionServices.getHistories(),
              builder: (_, snapshoot) {
                if (snapshoot.hasData) {
                  return ListView.builder(
                    itemCount: snapshoot.data!.length,
                    itemBuilder: (_, index) {
                      HistoriesModel history = snapshoot.data![index];
                      return HistoryVocabCard(title: history.vocab.toString());
                    },
                  );
                }
                return ListView(
                  physics: NeverScrollableScrollPhysics(
                    parent: ScrollPhysics(),
                  ),
                  children: [
                    ShimmerVocabCard(),
                    ShimmerVocabCard(),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

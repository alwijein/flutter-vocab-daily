import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          itemCount: vocabModels.length,
          itemBuilder: (_, index) {
            VocabModel vocabModel = vocabModels[index];
            return VocabCard(
              vocabModel: vocabModel,
              title: vocabModels[index].vocabName,
              subTitle: vocabModels[index].description,
              press: (bool value) {
                // vocabModels[index].status = value;
                // context
                //     .read<BookmarksBloc>()
                //     .add(BookmarksActivated(status: value, count: index));

                print('state ' +
                    vocabModels[index].vocabName +
                    vocabModels[index].status.toString());
              },
            );
          },
        ),
      ),
    );
  }
}

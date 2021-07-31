import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/screens/home_screen/components/card_quote.dart';
import 'package:vocab_daily/screens/home_screen/components/headling_profile.dart';
import 'package:vocab_daily/screens/home_screen/components/read_more.dart';
import 'package:vocab_daily/screens/home_screen/components/search_rounded.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isBookmarks = false;
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
                        return VocabCard(
                          title: VocabModel.vocabModel[index].vocabName,
                          subTitle: VocabModel.vocabModel[index].description,
                          press: () {
                            if (_isBookmarks == true) {
                              context.read<BookmarksBloc>().add(
                                  BookmarksActivated(status: _isBookmarks));
                              _isBookmarks = !_isBookmarks;
                            } else if (_isBookmarks == false) {
                              context.read<BookmarksBloc>().add(
                                  BookmarksNotActivated(status: _isBookmarks));
                              _isBookmarks = !_isBookmarks;
                            }
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

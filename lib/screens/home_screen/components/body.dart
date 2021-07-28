import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
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
                VocabCard(
                  title: "Now : Sekarang",
                  subTitle:
                      "sekarang where are they now? mereka di \nmana sekarang?",
                  press: () {
                    if (_isBookmarks == true) {
                      context.read<BookmarksBloc>().add(BookmarksActivated());
                      _isBookmarks = !_isBookmarks;
                    } else if (_isBookmarks == false) {
                      context
                          .read<BookmarksBloc>()
                          .add(BookmarksNotActivated());
                      _isBookmarks = !_isBookmarks;
                    }
                  },
                ),
                VocabCard(
                  press: () {
                    if (_isBookmarks == true) {
                      context.read<BookmarksBloc>().add(BookmarksActivated());
                      _isBookmarks = !_isBookmarks;
                    } else if (_isBookmarks == false) {
                      context
                          .read<BookmarksBloc>()
                          .add(BookmarksNotActivated());
                      _isBookmarks = !_isBookmarks;
                    }
                  },
                  title: "Time : Waktu",
                  subTitle:
                      "sekarang where are they now? mereka di \nmana sekarang?",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

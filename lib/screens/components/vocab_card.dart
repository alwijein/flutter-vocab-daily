import 'package:flutter/material.dart';
import 'package:vocab_daily/bloc/bookmarks_bloc/bookmarks_bloc.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vocab_daily/utils/color_rand.dart';

class VocabCard extends StatelessWidget {
  const VocabCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.press,
  }) : super(key: key);

  final String title, subTitle;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    ColorRand _colorRand = new ColorRand();

    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(23),
      ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: press,
                  child:
                      // BlocBuilder<BookmarksBloc, BookmarksState>(
                      //   builder: (context, state) {
                      //     return Icon(state is BookmarksIsActive
                      //         ? state.iconData
                      //         : state is BookmarksIsNotActive
                      //             ? state.iconData
                      //             : Icons.bookmark_border_outlined);
                      //   },
                      // ),
                      Icon(
                    VocabModel.vocabModel[0].status == true
                        ? Icons.bookmark_border
                        : Icons.bookmark_border_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

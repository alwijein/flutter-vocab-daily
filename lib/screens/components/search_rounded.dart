import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/shimmer_search_card.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/services/services.dart';
import 'package:vocab_daily/shared/shared.dart';
import 'package:vocab_daily/config/size_config.dart';

class Person {
  final String name, surname;
  final num age;

  Person(this.name, this.surname, this.age);
}

class SearchRounded extends StatelessWidget {
  const SearchRounded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConnectionServices connectionServices = new ConnectionServices();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(26)),
      child: FutureBuilder<List<VocabModel>>(
          future: connectionServices.getApiRoot(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GestureDetector(
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: SearchPage<VocabModel>(
                        items: snapshot.data ?? [],
                        searchLabel: 'Search vocab',
                        suggestion: Center(
                          child:
                              Text('Filter vocab by title, desc or variable'),
                        ),
                        failure: Center(
                          child: Text('No vocab found :('),
                        ),
                        filter: (VocabModel) => [
                              VocabModel.vocabName,
                              VocabModel.arti,
                              VocabModel.v1,
                            ],
                        builder: (VocabModel) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: getPropertionateScreenHeight(20),
                                right: getPropertionateScreenHeight(20)),
                            child: VocabCard(
                                vocabModel: VocabModel,
                                title: VocabModel.vocabName,
                                subTitle: VocabModel.arti,
                                press: () {}),
                          );
                        }),
                  );
                },
                child: Container(
                  height: getPropertionateScreenHeight(55),
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getPropertionateScreenWidht(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Search',
                            style: TextStyle(
                                color: kSecondaryColor,
                                fontSize: getPropertionateScreenWidht(16)),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: kPrimaryColor,
                          size: getPropertionateScreenWidht(28),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return ShimmerSearchCard();
          }),
    );
  }
}

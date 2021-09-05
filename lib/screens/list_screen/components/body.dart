import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/components/shimmer_search_card.dart';
import 'package:vocab_daily/screens/components/shimmer_vocab_card%20copy.dart';
import 'package:vocab_daily/screens/components/vocab_card.dart';
import 'package:vocab_daily/services/services.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
              return EasyRefresh(
                 onRefresh: () async {
                    setState(() {});
                  },
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) {
                    VocabModel vocabModel = snapshot.data![index];
                    return VocabCard(
                      vocabModel: vocabModel,
                      title: vocabModel.vocabName,
                      subTitle: vocabModel.arti,
                      press: () {},
                    );
                  },
                ),
              );
            }
            return ListView(
              physics: NeverScrollableScrollPhysics(
                parent: ScrollPhysics(),
              ),
              children: [
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
                ShimmerVocabCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}

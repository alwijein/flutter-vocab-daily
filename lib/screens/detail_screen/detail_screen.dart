import 'package:flutter/material.dart';
import 'package:vocab_daily/config/size_config.dart';
import 'package:vocab_daily/models/vocab_model.dart';
import 'package:vocab_daily/screens/detail_screen/components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.vocabModel}) : super(key: key);

  final VocabModel vocabModel;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(vocabModel.vocabName),
      ),
      body: Body(
        vocabModel: vocabModel,
      ),
    );
  }
}

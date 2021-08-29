import 'package:vocab_daily/models/tense_model.dart';

class VocabModel {
  int id;
  String vocabName, v1, v2, v3, arti;

  List<TenseModel> tense = [];
  VocabModel({
    required this.id,
    required this.vocabName,
    required this.v1,
    required this.v2,
    required this.v3,
    required this.arti,
    required this.tense,
  });

  static List<VocabModel> vocabModel(List data) {
    List<VocabModel> vocabModel = [];

    List<Map<String, String>> nameTenses = [
      {
        'tense_name': 'Simple present tense',
        'rumus': 'S + V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple present continues tense',
        'rumus': 'S + is/am/are V1 ing',
        'contoh': 'I am going',
      },
      {
        'tense_name': 'Simple present perfect tense',
        'rumus': 'S + have/has + V3',
        'contoh': 'I have gone',
      },
      {
        'tense_name': 'Simple present perfect continues tense',
        'rumus': 'S + have/has + been + V1 ing',
        'contoh': 'I have been going',
      },
      {
        'tense_name': 'Simple past tense',
        'rumus': 'S + V2',
        'contoh': 'I went',
      },
      {
        'tense_name': 'Simple past continous tense',
        'rumus': 'S + was/were + been + V1 ing',
        'contoh': 'I was been going',
      },
      {
        'tense_name': 'Simple past perfect tense',
        'rumus': 'S + had + V3',
        'contoh': 'I had gone',
      },
      {
        'tense_name': 'Simple past perfect continoues tense',
        'rumus': 'S + had + been + V1 ing',
        'contoh': 'I had been going',
      },
      {
        'tense_name': 'Simple future tense',
        'rumus': 'S + will + V1',
        'contoh': 'I will go',
      },
      {
        'tense_name': 'Simple future continoues tense',
        'rumus': 'S + will + be + V1 ing',
        'contoh': 'I will be going',
      },
      {
        'tense_name': 'Simple future perfect tense',
        'rumus': 'S + will + have + V3',
        'contoh': 'I will have gone',
      },
      {
        'tense_name': 'Simple past future tense',
        'rumus': 'S + would + V1',
        'contoh': 'I would go',
      },
      {
        'tense_name': 'Simple past future continoues tense',
        'rumus': 'S + would + be + V1 ing',
        'contoh': 'I would be going',
      },
      {
        'tense_name': 'Simple past future perfect tense',
        'rumus': 'S + would + have + V3',
        'contoh': 'I would have gone',
      },
      {
        'tense_name': 'Simple past future perfect continoues tense',
        'rumus': 'S + would + have + V1 ing',
        'contoh': 'I would have going',
      },
    ];
    for (var item in data) {
      List<TenseModel> tempt = [];
      for (Map item2 in nameTenses) {
        tempt.add(TenseModel(
            tenseName: item2['tense_name'],
            rumus: item2['rumus'],
            contoh: item2['contoh']));
      }
      vocabModel.add(
        VocabModel(
          id: item['id'],
          vocabName: item['kata_dasar'],
          v1: item['v1'],
          v2: item['v2'],
          v3: item['v3'],
          arti: item['arti'],
          tense: tempt,
        ),
      );
    }
    return vocabModel;
  }
}

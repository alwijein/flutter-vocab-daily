import 'package:vocab_daily/models/tense_model.dart';

class VocabModel {
  String id, vocabName, v1, v2, v3, arti;

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
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple present tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple present continues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple present perfect tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple present perfect continues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past continous tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past perfect tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past perfect continoues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple future tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple future continoues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past future tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past future continoues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
      },
      {
        'tense_name': 'Simple past future perfect continoues tense',
        'rumus': 'S+V1',
        'contoh': 'I go',
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
          id: item['id'].toString(),
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

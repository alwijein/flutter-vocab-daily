import 'package:vocab_daily/models/tense_model.dart';

class VocabModel {
  String vocabName, description;
  bool status;

  List<TenseModel> tense;
  static List<VocabModel> vocabModel = [
    VocabModel(
      vocabName: 'Go',
      description: 'Digunakan untuk mengatakan pergi',
      status: false,
      tense: [
        TenseModel(
          tenseName: 'Simple Present Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Continous Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Perfect Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
      ],
    ),
    VocabModel(
      vocabName: 'Now',
      description: 'Digunakan untuk mengatakan pergi',
      status: false,
      tense: [
        TenseModel(
          tenseName: 'Simple Present Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Continous Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Perfect Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
      ],
    ),
  ];

  VocabModel({
    required this.vocabName,
    required this.description,
    required this.status,
    required this.tense,
  });
}

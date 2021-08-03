import 'package:vocab_daily/models/tense_model.dart';

class VocabModel {
  String vocabName, description;
  bool status;

  List<TenseModel> tense;

  VocabModel({
    required this.vocabName,
    required this.description,
    required this.status,
    required this.tense,
  });

  // Dummy Data
  static List<VocabModel> vocabModel = [
    VocabModel(
      vocabName: 'Go',
      description:
          'Digunakan untuk mengatakan pergi igunakan untuk mengatakan pergi pergi igunakan untuk mengatakan pergis',
      status: false,
      tense: [
        TenseModel(
          tenseName: 'Simple Present Tense',
          rumus: 'S+V1',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Continous Tense 0',
          rumus: 'S+V2',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Perfect Tense 1',
          rumus: 'S+V3',
          contoh: 'I go',
        ),
        TenseModel(
          tenseName: 'Simple Present Perfect Tense 2',
          rumus: 'S+V3',
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
}

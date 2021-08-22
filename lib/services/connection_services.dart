part of 'services.dart';

class ConnectionServices {
  Future<List<VocabModel>> getApiRoot() async {
    var response = await Dio().get('http://buthu.me:8001/api/katakerja/');
    // clearData();
    // generatedVocab();
    return VocabModel.vocabModel(response.data);
  }

  void generatedVocab() async {
    var faker = new Faker();

    for (int i = 0; i < 5; i++) {
      var formData = FormData.fromMap({
        'kata_dasar': faker.lorem.word(),
        'v1': faker.lorem.word(),
        'v2': faker.lorem.word(),
        'v3': faker.lorem.word(),
        'contoh': faker.lorem.word(),
        'arti': faker.lorem.word(),
      });
      var response = await Dio()
          .post('http://buthu.me:8001/api/katakerja/', data: formData);
    }
  }
}

// class VocabDemo {
//   String namaTenses, keterangan, contoh;

//   VocabDemo({
//     required this.namaTenses,
//     required this.keterangan,
//     required this.contoh,
//   });

//   static List<VocabDemo> vocabDemo(List data) {
//     List<VocabDemo> vocabDemo = [];

//     for (var item in data) {
//       vocabDemo.add(
//         VocabDemo(
//           namaTenses: item['nama_tenses'],
//           keterangan: item['keterangan'],
//           contoh: item['contoh'],
//         ),
//       );
//     }
//     return vocabDemo;
//   }
// }

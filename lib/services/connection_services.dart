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

  void sendVocabTest(String kalimat, int idv) async {
    try {
      var formData = FormData.fromMap({
        'kalimat': kalimat,
        'kata_kerja_id': idv,
      });
      var response = await Dio()
          .post('http://buthu.me:8001/api/vocabdaily/', data: formData);
      Fluttertoast.showToast(
          msg: "Input Berhasil",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: kPrimaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Something Wrong: $e",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: kPrimaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}

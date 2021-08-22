part of 'services.dart';

class ConnectionServices {
  static List<ApiRoot> apiRoot = [];

  void getApiRoot() async {
    try {
      var response = await Dio().get('http://buthu.me:8001/api/');

      print(response.data['katakerja']);

      apiRoot.add(
        ApiRoot(
          kataKerja: response.data['katakerja'],
          petunjuk: response.data['petunjuk'],
          vocabDaily: response.data['vocabdaily'],
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  void getKatakerja() async {
    getApiRoot();
    try {
      var urlKey = await Dio().get(apiRoot[0].kataKerja);
      print(apiRoot[0].kataKerja);

      List<VocabDemo> vd = [];

      for (var data in urlKey.data) {
        VocabDemo(
            kataDasar: data['kata_dasar'],
            v1: data['v1'],
            v2: data['v2'],
            v3: data['v3'],
            arti: data['arti']);
      }

      print("succes: " + vd[0].arti);
    } catch (e) {
      print("Erro: $e");
    }
  }
}

class ApiRoot {
  String kataKerja, petunjuk, vocabDaily;

  ApiRoot({
    required this.kataKerja,
    required this.petunjuk,
    required this.vocabDaily,
  });
}

class VocabDemo {
  String kataDasar, v1, v2, v3, arti;

  VocabDemo({
    required this.kataDasar,
    required this.v1,
    required this.v2,
    required this.v3,
    required this.arti,
  });
}

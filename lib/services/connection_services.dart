import 'package:dio/dio.dart';

class ConnectionServices {
  static void getHttp() async {
    try {
      var response = await Dio().get('http://buthu.me:8001/api/katakerja');

      List<DataModelDemo> dataModelDemo = [];

      for (var data in response.data) {
        dataModelDemo.add(
          DataModelDemo(
              kataDasar: data['kata_dasar'],
              v1: data['v1'],
              v2: data['v2'],
              v3: data['v3'],
              arti: data['arti']),
        );
      }

      // print(dataModelDemo[0].arti);
      // print(dataModelDemo);

    } catch (e) {
      print(e);
    }
  }
}

class DataModelDemo {
  String kataDasar, v1, v2, v3, arti;

  DataModelDemo(
      {required this.kataDasar,
      required this.v1,
      required this.v2,
      required this.v3,
      required this.arti});
}

part of 'shared.dart';

class GetSharedPreferences {
  static firstOpen(bool isCheck) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool('first', isCheck);
  }

  static afterOpen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    return sp.getBool('first');
  }

  static setUsername(String username) async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    sp.setString('username', username);
  }

  static Future<String> getUsername() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('username') ?? '';
  }

  static setPathImg(String pathImg) async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    sp.setString('pathImg', pathImg);
  }

  static Future<String> getPathImg() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('pathImg') ?? '';
  }
}

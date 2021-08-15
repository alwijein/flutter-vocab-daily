part of 'shared.dart';

class GetProfiles {
  Future<List<String>> getProfile() async {
    String pathImg = await GetSharedPreferences.getPathImg();
    String username = await GetSharedPreferences.getUsername();

    List<String> data = [
      pathImg,
      username,
    ];
    return data;
  }
}

import 'package:vocab_daily/models/avatar_model.dart';

class UserModel {
  String name, photoProfile;

  UserModel({required this.name, required this.photoProfile});
}

List<AvatarModel> avatarPageOne = [
  AvatarModel(
    namePath: 'assets/icons/avatar/man.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/man-1.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/man-2.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/man-3.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/man-4.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/girl-1.svg',
  ),
];

List<AvatarModel> avatarPageTwo = [
  AvatarModel(
    namePath: 'assets/icons/avatar/girl.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/boy.svg',
  ),
  AvatarModel(
    namePath: 'assets/icons/avatar/boy-1.svg',
  ),
];

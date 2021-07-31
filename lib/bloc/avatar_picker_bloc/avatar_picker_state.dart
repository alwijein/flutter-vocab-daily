part of 'avatar_picker_bloc.dart';

@immutable
abstract class AvatarPickerState {}

class AvatarPickerInitial extends AvatarPickerState {}

class OnPicker extends AvatarPickerState {
  static String avatarPath = '';
}

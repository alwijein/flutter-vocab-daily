part of 'avatar_picker_bloc.dart';

@immutable
abstract class AvatarPickerEvent {}

class SetPicker extends AvatarPickerEvent {
  String path;

  SetPicker({required this.path});
}

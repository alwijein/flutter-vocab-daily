import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'avatar_picker_event.dart';
part 'avatar_picker_state.dart';

class AvatarPickerBloc extends Bloc<AvatarPickerEvent, AvatarPickerState> {
  AvatarPickerBloc() : super(AvatarPickerInitial());
  @override
  String path = '';
  Stream<AvatarPickerState> mapEventToState(
    AvatarPickerEvent event,
  ) async* {
    if (event is SetPicker) {
      print(event.path);
      OnPicker.avatarPath = event.path;
      yield OnPicker();
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vocab_daily/shared/shared.dart';

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
      OnPicker onPicker = new OnPicker();
      print(event.path);

      onPicker.avatarPath = event.path;
      yield onPicker;
    }
  }
}

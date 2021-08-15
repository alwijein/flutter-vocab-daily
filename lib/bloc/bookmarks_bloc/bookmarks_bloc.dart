import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vocab_daily/models/vocab_model.dart';

part 'bookmarks_event.dart';
part 'bookmarks_state.dart';

class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(BookmarksInitial());

  @override
  Stream<BookmarksState> mapEventToState(
    BookmarksEvent event,
  ) async* {
    if (event is BookmarksActivated) {
      print(event.status);
      vocabModels[event.count].status = event.status;
      yield BookmarksIsActive();
    } else if (event is BookmarksNotActivated) {
      print(event.status);
      vocabModels[event.count].status = event.status;
      yield BookmarksIsNotActive();
    }
  }
}

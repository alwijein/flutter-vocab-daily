import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bookmarks_event.dart';
part 'bookmarks_state.dart';

class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(BookmarksInitial());

  @override
  Stream<BookmarksState> mapEventToState(
    BookmarksEvent event,
  ) async* {
    if (event is BookmarksActivated) {
      yield BookmarksIsActive(
        iconData: Icons.bookmark,
      );
    } else if (event is BookmarksNotActivated) {
      yield BookmarksIsNotActive(
        iconData: Icons.bookmark_border_outlined,
      );
    }
  }
}

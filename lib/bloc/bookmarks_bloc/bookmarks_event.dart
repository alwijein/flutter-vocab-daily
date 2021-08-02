part of 'bookmarks_bloc.dart';

@immutable
abstract class BookmarksEvent {}

class BookmarksActivated extends BookmarksEvent {
  bool status;

  BookmarksActivated({required this.status});
}

class BookmarksNotActivated extends BookmarksEvent {
  bool status;

  BookmarksNotActivated({required this.status});
}

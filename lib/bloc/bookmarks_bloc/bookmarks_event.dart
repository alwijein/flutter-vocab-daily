part of 'bookmarks_bloc.dart';

@immutable
abstract class BookmarksEvent {}

class BookmarksActivated extends BookmarksEvent {
  bool status;
  int count;
  BookmarksActivated({required this.status, required this.count});
}

class BookmarksNotActivated extends BookmarksEvent {
  bool status;
  int count;
  BookmarksNotActivated({required this.status, required this.count});
}

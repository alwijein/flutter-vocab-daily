part of 'bookmarks_bloc.dart';

@immutable
abstract class BookmarksEvent {}

class BookmarksActivated extends BookmarksEvent {}

class BookmarksNotActivated extends BookmarksEvent {}

part of 'bookmarks_bloc.dart';

@immutable
abstract class BookmarksState {}

class BookmarksInitial extends BookmarksState {}

class BookmarksIsActive extends BookmarksState {}

class BookmarksIsNotActive extends BookmarksState {}

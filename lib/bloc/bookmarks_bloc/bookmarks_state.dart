part of 'bookmarks_bloc.dart';

@immutable
abstract class BookmarksState {}

class BookmarksInitial extends BookmarksState {}

class BookmarksIsActive extends BookmarksState {
  final IconData iconData;

  BookmarksIsActive({required this.iconData});
  @override
  List<Object> get props => [iconData];
}

class BookmarksIsNotActive extends BookmarksState {
  final IconData iconData;

  BookmarksIsNotActive({required this.iconData});

  @override
  List<Object> get props => [iconData];
}

part of 'page_bloc.dart';

@immutable
abstract class PageEvent {}

class GoToAvatarScreen extends PageEvent {}

class GoToHomeScreen extends PageEvent {}

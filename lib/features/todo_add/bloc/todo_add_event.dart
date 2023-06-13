import 'package:abstract_bloc/abstract_bloc.dart';

abstract class TodoAddEvent {}

class TodoAddLoadEvent extends AbstractListLoadEvent implements TodoAddEvent {}

class TodoAddRefreshEvent extends AbstractListRefreshEvent
    implements TodoAddEvent {}

class TodoAddLoadMoreEvent extends AbstractListLoadMoreEvent
    implements TodoAddEvent {}

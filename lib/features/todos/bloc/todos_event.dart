import 'package:abstract_bloc/abstract_bloc.dart';

abstract class TodosEvent {}

class TodosLoadEvent extends AbstractListLoadEvent implements TodosEvent {}

class TodosRefreshEvent extends AbstractListRefreshEvent
    implements TodosEvent {}

class TodosLoadMoreEvent extends AbstractListLoadMoreEvent
    implements TodosEvent {}

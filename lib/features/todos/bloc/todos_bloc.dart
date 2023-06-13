import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodosBloc extends AbstractListBloc<TodosState> {
  final TodosRepository todosRepository;

  TodosBloc({
    required this.todosRepository,
  }) : super(TodosState.initial());
  @override
  AbstractListState initialState() => TodosState.initial();

  @override
  Future<Result> resolveData() async => await todosRepository.get();
}

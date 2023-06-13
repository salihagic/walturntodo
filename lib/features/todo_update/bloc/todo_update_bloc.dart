import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoUpdateBloc extends AbstractFormBloc<TodoUpdateState> {
  final TodosRepository todosRepository;

  TodoUpdateBloc({
    required this.todosRepository,
  }) : super(TodoUpdateState.initial());

  @override
  Future<Result> initModel(AbstractFormInitEvent event, Emitter<TodoUpdateState> emit) async => Result.success(data: event.model);

  @override
  Future<Result> onSubmit(model) => todosRepository.update(model);
}

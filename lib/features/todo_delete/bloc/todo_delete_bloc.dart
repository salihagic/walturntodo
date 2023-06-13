import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoDeleteBloc extends AbstractFormBloc<TodoDeleteState> {
  final TodosRepository todosRepository;

  TodoDeleteBloc({
    required this.todosRepository,
  }) : super(TodoDeleteState.initial());

  @override
  Future<Result> initModel(AbstractFormInitEvent event, Emitter<TodoDeleteState> emit) async => Result.success(data: event.model);

  @override
  Future<Result> onSubmit(model) => todosRepository.delete((model as Todo).id);
}

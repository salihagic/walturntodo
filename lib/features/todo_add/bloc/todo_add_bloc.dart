import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoAddBloc extends AbstractFormBloc<TodoAddState> {
  final TodosRepository todosRepository;

  TodoAddBloc({
    required this.todosRepository,
    required TodoAddModelValidator modelValidator,
  }) : super(TodoAddState.initial(), modelValidator);

  @override
  Future<Result> initModel(AbstractFormInitEvent event, Emitter<TodoAddState> emit) async => Result.success(data: TodoAddModel());

  @override
  Future<Result> onSubmit(model) => todosRepository.add(model);
}

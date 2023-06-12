import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodosState extends AbstractListState<Todo> {
  TodosState({
    required ResultStatus resultStatus,
    required GridResult<Todo> result,
  }) : super(
          resultStatus: resultStatus,
          result: result,
        );

  factory TodosState.initial() => TodosState(
        resultStatus: ResultStatus.loading,
        result: GridResult<Todo>(),
      );

  @override
  TodosState copyWith({
    ResultStatus? resultStatus,
    GridResult<Todo>? result,
  }) =>
      TodosState(
        resultStatus: resultStatus ?? this.resultStatus,
        result: result ?? this.result,
      );
}

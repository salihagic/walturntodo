import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoDeleteState extends AbstractFormBasicState<Todo> {
  TodoDeleteState({
    required super.formResultStatus,
    super.model,
  });

  factory TodoDeleteState.initial() => TodoDeleteState(
        formResultStatus: FormResultStatus.initializing,
      );

  @override
  TodoDeleteState copyWith({
    FormResultStatus? formResultStatus,
    Todo? model,
  }) =>
      TodoDeleteState(
        formResultStatus: formResultStatus ?? this.formResultStatus,
        model: model ?? this.model,
      );
}

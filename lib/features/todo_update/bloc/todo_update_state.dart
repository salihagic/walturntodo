import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoUpdateState extends AbstractFormBasicState<Todo> {
  TodoUpdateState({
    required super.formResultStatus,
    super.model,
  });

  factory TodoUpdateState.initial() => TodoUpdateState(
        formResultStatus: FormResultStatus.initializing,
      );

  @override
  TodoUpdateState copyWith({
    FormResultStatus? formResultStatus,
    Todo? model,
  }) =>
      TodoUpdateState(
        formResultStatus: formResultStatus ?? this.formResultStatus,
        model: model ?? this.model,
      );
}

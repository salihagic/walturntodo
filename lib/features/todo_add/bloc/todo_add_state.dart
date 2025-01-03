import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoAddState extends AbstractFormState<TodoAddModel, TodoAddModelValidator> {
  TodoAddState({
    super.model,
    super.modelValidator,
    required super.formResultStatus,
    super.autovalidate,
  });

  factory TodoAddState.initial() => TodoAddState(
        formResultStatus: FormResultStatus.initializing,
      );

  @override
  TodoAddState copyWith({
    TodoAddModel? model,
    TodoAddModelValidator? modelValidator,
    FormResultStatus? formResultStatus,
    bool? autovalidate,
  }) =>
      TodoAddState(
        model: model ?? this.model,
        modelValidator: modelValidator ?? this.modelValidator,
        formResultStatus: formResultStatus ?? this.formResultStatus,
        autovalidate: autovalidate ?? this.autovalidate,
      );
}

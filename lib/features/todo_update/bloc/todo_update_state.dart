import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoUpdateState extends AbstractFormState<TodoUpdateModel, TodoUpdateModelValidator> {
  TodoUpdateState({
    super.model,
    super.modelValidator,
    required super.formResultStatus,
    super.autovalidate,
  });

  factory TodoUpdateState.initial() => TodoUpdateState(
        formResultStatus: FormResultStatus.initializing,
      );

  @override
  TodoUpdateState copyWith({
    TodoUpdateModel? model,
    TodoUpdateModelValidator? modelValidator,
    FormResultStatus? formResultStatus,
    bool? autovalidate,
  }) =>
      TodoUpdateState(
        model: model ?? this.model,
        modelValidator: modelValidator ?? this.modelValidator,
        formResultStatus: formResultStatus ?? this.formResultStatus,
        autovalidate: autovalidate ?? this.autovalidate,
      );
}

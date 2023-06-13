import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoItemCheckbox extends StatefulWidget {
  final Todo todo;

  const TodoItemCheckbox({
    super.key,
    required this.todo,
  });

  @override
  State<TodoItemCheckbox> createState() => _TodoItemCheckboxState();
}

class _TodoItemCheckboxState extends State<TodoItemCheckbox> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: Key('todo_item_checkbox_${widget.todo.id}'),
      create: (context) => services.get<TodoUpdateBloc>(),
      child: AbstractFormBuilder<TodoUpdateBloc, TodoUpdateState>(
        onInit: (context) => context.read<TodoUpdateBloc>().add(AbstractFormInitEvent(model: widget.todo)),
        onSuccess: (context, state) => context.read<TodosBloc>().add(TodosLoadEvent()),
        builder: (context, todoUpdateState) {
          return Checkbox(
            onChanged: (value) {
              // To get a quicker feedback
              setState(() => widget.todo.isCompleted = value.value);
              context.read<TodoUpdateBloc>().add(AbstractFormSubmitEvent(model: todoUpdateState.model?.copyWith(isCompleted: value)));
            },
            value: widget.todo.isCompleted,
          );
        },
      ),
    );
  }
}

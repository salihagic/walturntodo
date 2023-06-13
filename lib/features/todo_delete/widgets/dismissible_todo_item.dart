import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walturntodo/_all.dart';

class DismissibleTodoItem extends StatelessWidget {
  final Todo todo;
  final Widget child;

  const DismissibleTodoItem({
    super.key,
    required this.todo,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: Key('dismissible_todo_item_bloc_provider${todo.toMap()}'),
      create: (context) => services.get<TodoDeleteBloc>(),
      child: AbstractFormBuilder<TodoDeleteBloc, TodoDeleteState>(
        onInit: (context) => context.read<TodoDeleteBloc>().add(AbstractFormInitEvent(model: todo)),
        onSuccess: (context, state) => context.read<TodosBloc>().add(TodosLoadEvent()),
        builder: (context, todoDeleteState) {
          return Slidable(
            key: ValueKey('todo_item_dismissible_key_${todo.id}'),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              extentRatio: 0.2,
              children: [
                SlidableAction(
                  onPressed: (context) => context.read<TodoDeleteBloc>().add(AbstractFormSubmitEvent()),
                  autoClose: true,
                  backgroundColor: context.appTheme.errorColor,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                ),
              ],
            ),
            child: child,
          );
        },
      ),
    );
  }
}

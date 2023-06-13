import 'package:walturntodo/_all.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return DismissibleTodoItem(
      todo: todo,
      child: ListTile(
        key: ValueKey('todo_item_key_${todo.id}'),
        title: Text(todo.title),
        tileColor: context.appTheme.neutral1,
      ),
    );
  }
}

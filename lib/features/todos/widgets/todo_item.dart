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
      child: TodoItemUpdateContainer(
        todo: todo,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          color: context.appTheme.neutral1,
          child: Row(
            key: ValueKey('todo_item_key_${todo.id}'),
            children: [
              TodoItemCheckbox(todo: todo),
              Expanded(
                child: Text(
                  todo.title,
                  style: todo.isCompleted
                      ? TextStyle(
                          color: context.appTheme.neutral2,
                          decoration: TextDecoration.lineThrough,
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

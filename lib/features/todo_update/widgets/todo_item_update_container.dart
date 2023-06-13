import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoItemUpdateContainer extends StatelessWidget {
  final Todo todo;
  final Widget child;

  const TodoItemUpdateContainer({
    Key? key,
    required this.todo,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: _TodoItemUpdateDialog(todo: todo),
          ),
        );
      },
      child: child,
    );
  }
}

class _TodoItemUpdateDialog extends StatelessWidget {
  final Todo todo;

  _TodoItemUpdateDialog({
    required this.todo,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.all(20.0),
      child: BlocProvider(
        key: Key('todo_item_update_dialog_${todo.id}'),
        create: (context) => services.get<TodoUpdateBloc>(),
        child: AbstractFormBuilder<TodoUpdateBloc, TodoUpdateState>(
          onInit: (context) => context.read<TodoUpdateBloc>().add(AbstractFormInitEvent(model: todo)),
          reinitOnSuccess: false,
          onSuccess: (context, state) {
            context.read<TodosBloc>().add(TodosLoadEvent());
            context.navigator.pop();
          },
          builder: (context, todoUpdateState) {
            return Form(
              autovalidateMode: todoUpdateState.autovalidateMode,
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Gap(20.0),
                  TextFormField(
                    initialValue: todoUpdateState.model?.title,
                    validator: (text) => todoUpdateState.modelValidator?.title(todoUpdateState.model?.copyWith(title: text)),
                    onChanged: (text) => context.read<TodoUpdateBloc>().add(AbstractFormUpdateEvent(model: todoUpdateState.model?.copyWith(title: text))),
                  ),
                  const Gap(20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Button(
                          onTap: () => context.navigator.pop(),
                          text: 'Cancel',
                        ),
                      ),
                      Expanded(
                        child: Button(
                          onTap: () {
                            if (_formKey.validate()) {
                              context.read<TodoUpdateBloc>().add(AbstractFormSubmitEvent());
                            }
                          },
                          text: 'Save',
                          isLoading: todoUpdateState.isSubmitting,
                          color: context.theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

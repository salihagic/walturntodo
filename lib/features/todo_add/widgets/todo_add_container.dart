import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodoAddContainer extends StatefulWidget {
  const TodoAddContainer({
    super.key,
  });

  @override
  State<TodoAddContainer> createState() => _TodoAddContainerState();
}

class _TodoAddContainerState extends State<TodoAddContainer> {
  final _formKey = GlobalKey<FormState>();
  final _titleTextEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _titleTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => services.get<TodoAddBloc>(),
      child: AbstractFormBuilder<TodoAddBloc, TodoAddState>(
        onSuccess: (context, state) {
          context.unfocus();
          _titleTextEditingController.clear();
          context.read<TodosBloc>().add(TodosLoadEvent());
        },
        builder: (context, todoAddState) {
          return Form(
            autovalidateMode: todoAddState.autovalidateMode,
            key: _formKey,
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                border: Border(top: BorderSide(color: context.appTheme.neutral1, width: 2)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _titleTextEditingController,
                      validator: (text) => todoAddState.modelValidator?.title(todoAddState.model?.copyWith(title: text)),
                      onChanged: (text) => context.read<TodoAddBloc>().add(AbstractFormUpdateEvent(model: todoAddState.model?.copyWith(title: text))),
                    ),
                  ),
                  const Gap(20),
                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.validate()) {
                        context.read<TodoAddBloc>().add(AbstractFormSubmitEvent());
                      }
                    },
                    child: const Icon(Icons.add, size: 35),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

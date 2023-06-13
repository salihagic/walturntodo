import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => services.get<TodosBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const AppBarAppLogo(),
        ),
        body: Column(
          children: [
            Expanded(child: _Todos()),
            const TodoAddContainer(),
          ],
        ),
      ),
    );
  }
}

class _Todos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: AbstractListBuilder<TodosBloc, TodosState>(
        onInit: (context) => context.read<TodosBloc>().add(TodosLoadEvent()),
        onRefresh: (context) => context.read<TodosBloc>().add(TodosRefreshEvent()),
        enableLoadMore: false,
        itemBuilder: (context, todosState, index) => TodoItem(todo: todosState.items[index]),
        separatorBuilder: (context, state, index) => const SizedBox(height: 5),
        noDataBuilder: (_, __, ___) => Center(
          child: Text(context.translations.there_are_no_todos),
        ),
      ),
    );
  }
}

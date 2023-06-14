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
        body: const Column(
          children: [
            Expanded(
              child: _TodosWrapper(),
            ),
            TodoAddContainer(),
          ],
        ),
      ),
    );
  }
}

class _TodosWrapper extends StatelessWidget {
  const _TodosWrapper();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: context.translations.pending),
              Tab(text: context.translations.completed),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                _Todos(isCompleted: false),
                _Todos(isCompleted: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Todos extends StatelessWidget {
  final bool isCompleted;

  const _Todos({
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: AbstractListBuilder<TodosBloc, TodosState>(
        isLoading: (context, state) => false,
        onInit: (context) => context.read<TodosBloc>().add(TodosLoadEvent()),
        onRefresh: (context) => context.read<TodosBloc>().add(TodosRefreshEvent()),
        enableLoadMore: false,
        itemCount: (context, todosState) => todosState.items.where((x) => x.isCompleted == isCompleted).length,
        itemBuilder: (context, todosState, index) {
          final items = todosState.items.where((x) => x.isCompleted == isCompleted).toList();

          return TodoItem(todo: items[index]);
        },
        separatorBuilder: (context, state, index) => const SizedBox(height: 5),
        noDataBuilder: (_, __, ___) => Center(
          child: Text(
            isCompleted ? context.translations.there_are_no_completed_todos : context.translations.there_are_no_pending_todos,
          ),
        ),
      ),
    );
  }
}

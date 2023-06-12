import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarAppLogo(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: BlocProvider(
          create: (context) => services.get<TodosBloc>(),
          child: AbstractListBuilder<TodosBloc, TodosState>(
            isLoading: (context, state) => false,
            header: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                context.translations.popular,
                style: const TextStyle(
                    color: Color(0xFFE4ECEF),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            onInit: (context) =>
                context.read<TodosBloc>().add(TodosLoadEvent()),
            onRefresh: (context) =>
                context.read<TodosBloc>().add(TodosRefreshEvent()),
            onLoadMore: (context) =>
                context.read<TodosBloc>().add(TodosLoadMoreEvent()),
            itemBuilder: (context, todosState, index) {
              return Text(todosState.items[index].title);
            },
            separatorBuilder: (context, state, index) =>
                const SizedBox(height: 20),
            noDataBuilder: (_, __, ___) => Center(
              child: Text(context.translations.there_are_no_popular_movies),
            ),
          ),
        ),
      ),
    );
  }
}

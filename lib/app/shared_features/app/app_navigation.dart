import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

class AppNavigation extends StatelessWidget {
  static const route = '/';

  const AppNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, appState) {
        if (appState.isLoading) {
          return const SplashPage();
        }

        return const TodosPage();
      },
    );
  }
}

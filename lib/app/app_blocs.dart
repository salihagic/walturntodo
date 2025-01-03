import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

// Register singleton blocs for the app
class AppBlocs extends StatelessWidget {
  final Widget child;

  const AppBlocs({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _<ConnectivityBloc>(),
        _<LocalizationBloc>(),
        _<ErrorHandlerBloc>(),
        _<ThemeBloc>(),
        _<TodosBloc>(),
      ],
      child: child,
    );
  }

  BlocProvider<T> _<T extends StateStreamableSource<Object?>>() => BlocProvider<T>.value(value: services.get<T>());
}

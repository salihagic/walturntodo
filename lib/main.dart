import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

Future main(args) async {
  await Startup.configure();

  Bloc.observer = AppBlocObserver();

  runApp(const App());
}

import 'package:walturntodo/_all.dart';
import 'package:abstract_bloc/abstract_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final IStorageRepository storageRepository;

  ThemeBloc({
    required this.storageRepository,
  }) : super(initialState()) {
    on<ThemeInitEvent>(_init);
    on<ThemeChangeEvent>(_change);

    add(ThemeInitEvent());
  }

  static ThemeState initialState() => ThemeState(
        status: ThemeStateStatus.initializing,
        themeMode: ThemeMode.dark,
      );

  Future<void> _init(ThemeInitEvent event, Emitter<ThemeState> emit) async {
    int? themeModeIndex = await storageRepository.get(AppKeys.theme_mode);

    add(ThemeChangeEvent(themeMode: themeModeIndex == null ? ThemeMode.dark : ThemeMode.values[themeModeIndex]));
  }

  Future<void> _change(ThemeChangeEvent event, Emitter<ThemeState> emit) async {
    await storageRepository.set(AppKeys.theme_mode, event.themeMode.index);

    emit(state.copyWith(status: ThemeStateStatus.initialized, themeMode: event.themeMode));
  }
}

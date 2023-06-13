import 'package:walturntodo/_all.dart';

class BlocsConfiguration {
  static void configure() {
    configureSingletons();
    configureScoped();
  }

  static void configureSingletons() {
    services.registerSingleton(
      AppBloc(),
    );
    services.registerSingleton(
      ConnectivityBloc(),
    );
    services.registerSingleton(
      LocalizationBloc(
        restApiClient: services.get<IRestApiClient>(),
        storageRepository: services.get<IStorageRepository>(),
      ),
    );
    services.registerSingleton(
      ErrorHandlerBloc(
        exceptionsStream: services.get<ExceptionHandler>(),
      ),
    );
    services.registerSingleton(
      ThemeBloc(
        storageRepository: services.get<IStorageRepository>(),
      ),
    );
  }

  static void configureScoped() {
    services.registerFactory(
      () => TodosBloc(
        todosRepository: services.get<TodosRepository>(),
      ),
    );
    services.registerFactory(
      () => TodoAddBloc(
        todosRepository: services.get<TodosRepository>(),
        modelValidator: services.get<TodoAddModelValidator>(),
      ),
    );
    services.registerFactory(
      () => TodoUpdateBloc(
        todosRepository: services.get<TodosRepository>(),
      ),
    );
    services.registerFactory(
      () => TodoDeleteBloc(
        todosRepository: services.get<TodosRepository>(),
      ),
    );
  }
}

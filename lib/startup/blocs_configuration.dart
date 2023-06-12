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
        restApiClient: services.get<IRestApiClient>(),
      ),
    );
    services.registerSingleton(
      ThemeBloc(
        storageRepository: services.get<IStorageRepository>(),
      ),
    );
  }

  static void configureScoped() {}
}

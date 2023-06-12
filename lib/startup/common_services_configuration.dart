import 'package:walturntodo/_all.dart';

class CommonServicesConfiguration {
  static void configure() {
    services.registerSingleton<IToast>(Toast());
    services.registerSingleton<ExceptionHandler>(
      ExceptionHandlerImpl(),
      dispose: (exceptionHandler) => exceptionHandler.dispose(),
    );
  }
}

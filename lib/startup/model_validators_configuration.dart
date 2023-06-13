import 'package:walturntodo/_all.dart';

class ModelValidatorsConfiguration {
  static void configure() {
    services.registerSingleton<TodoAddModelValidator>(
      TodoAddModelValidator(),
    );
  }
}

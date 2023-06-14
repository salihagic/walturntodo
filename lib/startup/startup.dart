import 'package:walturntodo/_all.dart';

GetIt services = GetIt.instance;
Environment environment = Environment.values[int.tryParse(const String.fromEnvironment('environment')) ?? Environment.production.index];

class Startup {
  static Future configure() async {
    WidgetsFlutterBinding.ensureInitialized();

    await StorageRepository.initFlutter();
    await Firebase.initializeApp();

    AppSettingsConfiguration.configure();
    CommonServicesConfiguration.configure();
    await StorageConfiguration.configure();
    ModelValidatorsConfiguration.configure();
    await DataSourcesConfiguration.configure();
    await RepositoriesConfiguration.configure();
    BlocsConfiguration.configure();
  }
}

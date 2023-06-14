import 'package:walturntodo/_all.dart';

class StorageConfiguration {
  static Future configure() async {
    final storageRepository = SecureStorageRepository();
    await storageRepository.init();

    if (services.get<AppSettings>().resetStorageOnRestart) {
      await storageRepository.clear();
    }

    services.registerSingleton<IStorageRepository>(storageRepository);
  }
}

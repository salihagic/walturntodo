import 'package:walturntodo/_all.dart';

class RepositoriesConfiguration {
  static Future configure() async {
    services.registerSingleton<TodosRepository>(
      TodosRepositoryImpl(
        remoteDataSource: services.get<TodosRemoteDataSource>(),
      ),
    );
  }
}

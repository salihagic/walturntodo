import 'package:walturntodo/_all.dart';

class DataSourcesConfiguration {
  static Future configure() async {
    services.registerSingleton<TodosRemoteDataSource>(
      TodosRemoteDataSourceImpl(
        todoMapper: todoMapper,
        todoUpdateModelMapper: todoUpdateModelMapper,
      ),
    );
  }
}

import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class TodosRepository {
  Future<Result<GridResult<Todo>>> get();
  Future<Result> add(TodoAddModel model);
  Future<Result<TodoUpdateModel>> prepareForUpdate(Todo todo);
  Future<Result> update(TodoUpdateModel model);
  Future<Result> delete(String id);
}

class TodosRepositoryImpl implements TodosRepository {
  final TodosRemoteDataSource remoteDataSource;

  TodosRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Result<GridResult<Todo>>> get() async => await remoteDataSource.get();

  @override
  Future<Result> add(TodoAddModel model) => remoteDataSource.add(model);

  @override
  Future<Result> update(TodoUpdateModel model) => remoteDataSource.update(model);

  @override
  Future<Result<TodoUpdateModel>> prepareForUpdate(Todo todo) => remoteDataSource.prepareForUpdate(todo);

  @override
  Future<Result> delete(String id) => remoteDataSource.delete(id);
}

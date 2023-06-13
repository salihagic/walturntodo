import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class TodosRepository {
  Future<Result<GridResult<Todo>>> get();
  Future<Result> add(TodoAddModel model);
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
}

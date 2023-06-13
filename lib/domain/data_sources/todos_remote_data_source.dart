import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class TodosRemoteDataSource {
  Future<Result<GridResult<Todo>>> get();
  Future<Result> add(TodoAddModel model);
  Future<Result> update(Todo model);
  Future<Result> delete(String id);
}

class TodosRemoteDataSourceImpl with SafeExecution implements TodosRemoteDataSource {
  final EntityMapper<QueryDocumentSnapshot<Map<String, dynamic>>, Todo> todoMapper;

  TodosRemoteDataSourceImpl({
    required this.todoMapper,
  });

  @override
  Future<Result<GridResult<Todo>>> get() async {
    return await execute(() async {
      final todos = await _todosCollection.get();

      final data = GridResult(
        items: todos.docs.map((doc) => todoMapper(doc)).toList(),
      );

      final result = todos.metadata.isFromCache ? Result.cache(data: data) : Result.network(data: data);

      return result;
    });
  }

  @override
  Future<Result> add(TodoAddModel model) async {
    return await execute(() async {
      await _todosCollection.add(model.toMap());

      return Result.success();
    });
  }

  @override
  Future<Result> update(Todo model) async {
    return await execute(() async {
      await _todosCollection.doc(model.id).update(model.toMap());

      return Result.success();
    });
  }

  @override
  Future<Result> delete(String id) async {
    return await execute(() async {
      await _todosCollection.doc(id).delete();

      return Result.success();
    });
  }

  CollectionReference<Map<String, dynamic>> get _todosCollection => FirebaseFirestore.instance.collection('todos');
}

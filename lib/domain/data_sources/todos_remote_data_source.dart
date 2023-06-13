import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class TodosRemoteDataSource {
  Future<Result<GridResult<Todo>>> get();
  Future<Result> add(TodoAddModel model);
  Future<Result<TodoUpdateModel>> prepareForUpdate(Todo todo);
  Future<Result> update(TodoUpdateModel model);
  Future<Result> delete(String id);
}

class TodosRemoteDataSourceImpl with SafeExecution implements TodosRemoteDataSource {
  final EntityMapper<QueryDocumentSnapshot<Map<String, dynamic>>, Todo> todoMapper;
  final EntityMapper<DocumentSnapshot<Map<String, dynamic>>, TodoUpdateModel> todoUpdateModelMapper;

  TodosRemoteDataSourceImpl({
    required this.todoMapper,
    required this.todoUpdateModelMapper,
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
  Future<Result<TodoUpdateModel>> prepareForUpdate(Todo todo) async {
    // In this case it is redundant to fetch data again from the API, but as
    // this app is a concept app, update operation should always have the
    // freshest possible data to populate form fields, and to mittigate the
    // issue of not containing enough data as the display viewmodel sometimes
    // doesn't contain all the information that can be updated
    // return await execute(() async {
    //   final doc = await _todosCollection.doc(todo.id).get();
    //   return Result.success(data: todoUpdateModelMapper(doc));
    // });

    // This is a case where update model and entity are the same so we don't
    // need to fetch data from API (minor performance improvement)
    return Result.success(
      data: TodoUpdateModel(
        id: todo.id,
        isCompleted: todo.isCompleted,
        title: todo.title,
      ),
    );
  }

  @override
  Future<Result> update(TodoUpdateModel model) async {
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

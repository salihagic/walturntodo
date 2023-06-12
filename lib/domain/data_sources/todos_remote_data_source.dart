import 'package:abstract_bloc/abstract_bloc.dart';
import 'package:walturntodo/_all.dart';

abstract class TodosRemoteDataSource {
  Future<Result<GridResult<Todo>>> get();
}

class TodosRemoteDataSourceImpl implements TodosRemoteDataSource {
  final EntityMapper<QueryDocumentSnapshot<Map<String, dynamic>>, Todo>
      todoMapper;

  TodosRemoteDataSourceImpl({
    required this.todoMapper,
  });

  @override
  Future<Result<GridResult<Todo>>> get() async {
    try {
      final todos = await FirebaseFirestore.instance.collection('todos').get();

      final data = GridResult(
        items: todos.docs.map((doc) => todoMapper(doc)).toList(),
      );

      final result = todos.metadata.isFromCache
          ? Result.cache(data: data)
          : Result.network(data: data);

      return result;
    } on FirebaseException catch (e) {
      services.get<ExceptionHandler>().handleFirebaseException(e);

      return Result.error(exception: e);
    }
  }
}

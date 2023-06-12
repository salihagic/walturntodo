import 'package:walturntodo/_all.dart';

EntityMapper<TodoResponse, Todo> get todoResponseTodoMapper =>
    (response) => Todo(
          id: response.id.value,
          isCompleted: response.isCompleted.value,
          title: response.title.value,
          description: response.description,
        );

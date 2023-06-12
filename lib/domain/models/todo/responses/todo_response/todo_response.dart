import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_response.freezed.dart';
part 'todo_response.g.dart';

@unfreezed
class TodoResponse with _$TodoResponse {
  factory TodoResponse({
    String? id,
    bool? isCompleted,
    String? title,
    String? description,
  }) = _TodoResponse;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}

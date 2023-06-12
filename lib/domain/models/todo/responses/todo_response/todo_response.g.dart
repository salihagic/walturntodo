// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoResponse _$$_TodoResponseFromJson(Map json) => _$_TodoResponse(
      id: json['id'] as String?,
      isCompleted: json['isCompleted'] as bool?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_TodoResponseToJson(_$_TodoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isCompleted': instance.isCompleted,
      'title': instance.title,
      'description': instance.description,
    };

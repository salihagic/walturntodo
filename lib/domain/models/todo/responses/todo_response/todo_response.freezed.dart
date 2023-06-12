// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return _TodoResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoResponse {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  set isCompleted(bool? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  set description(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponseCopyWith<TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseCopyWith<$Res> {
  factory $TodoResponseCopyWith(
          TodoResponse value, $Res Function(TodoResponse) then) =
      _$TodoResponseCopyWithImpl<$Res, TodoResponse>;
  @useResult
  $Res call(
      {String? id, bool? isCompleted, String? title, String? description});
}

/// @nodoc
class _$TodoResponseCopyWithImpl<$Res, $Val extends TodoResponse>
    implements $TodoResponseCopyWith<$Res> {
  _$TodoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isCompleted = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoResponseCopyWith<$Res>
    implements $TodoResponseCopyWith<$Res> {
  factory _$$_TodoResponseCopyWith(
          _$_TodoResponse value, $Res Function(_$_TodoResponse) then) =
      __$$_TodoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, bool? isCompleted, String? title, String? description});
}

/// @nodoc
class __$$_TodoResponseCopyWithImpl<$Res>
    extends _$TodoResponseCopyWithImpl<$Res, _$_TodoResponse>
    implements _$$_TodoResponseCopyWith<$Res> {
  __$$_TodoResponseCopyWithImpl(
      _$_TodoResponse _value, $Res Function(_$_TodoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isCompleted = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TodoResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoResponse implements _TodoResponse {
  _$_TodoResponse({this.id, this.isCompleted, this.title, this.description});

  factory _$_TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TodoResponseFromJson(json);

  @override
  String? id;
  @override
  bool? isCompleted;
  @override
  String? title;
  @override
  String? description;

  @override
  String toString() {
    return 'TodoResponse(id: $id, isCompleted: $isCompleted, title: $title, description: $description)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      __$$_TodoResponseCopyWithImpl<_$_TodoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoResponseToJson(
      this,
    );
  }
}

abstract class _TodoResponse implements TodoResponse {
  factory _TodoResponse(
      {String? id,
      bool? isCompleted,
      String? title,
      String? description}) = _$_TodoResponse;

  factory _TodoResponse.fromJson(Map<String, dynamic> json) =
      _$_TodoResponse.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  bool? get isCompleted;
  set isCompleted(bool? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get description;
  set description(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

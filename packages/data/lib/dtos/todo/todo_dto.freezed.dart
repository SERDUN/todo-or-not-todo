// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoDTO _$TodoDTOFromJson(Map<String, dynamic> json) {
  return _TodoDTO.fromJson(json);
}

/// @nodoc
mixin _$TodoDTO {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDTOCopyWith<TodoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDTOCopyWith<$Res> {
  factory $TodoDTOCopyWith(TodoDTO value, $Res Function(TodoDTO) then) =
      _$TodoDTOCopyWithImpl<$Res, TodoDTO>;
  @useResult
  $Res call(
      {String id,
      String title,
      String details,
      String userId,
      String createdAt,
      int? position});
}

/// @nodoc
class _$TodoDTOCopyWithImpl<$Res, $Val extends TodoDTO>
    implements $TodoDTOCopyWith<$Res> {
  _$TodoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDTOImplCopyWith<$Res> implements $TodoDTOCopyWith<$Res> {
  factory _$$TodoDTOImplCopyWith(
          _$TodoDTOImpl value, $Res Function(_$TodoDTOImpl) then) =
      __$$TodoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String details,
      String userId,
      String createdAt,
      int? position});
}

/// @nodoc
class __$$TodoDTOImplCopyWithImpl<$Res>
    extends _$TodoDTOCopyWithImpl<$Res, _$TodoDTOImpl>
    implements _$$TodoDTOImplCopyWith<$Res> {
  __$$TodoDTOImplCopyWithImpl(
      _$TodoDTOImpl _value, $Res Function(_$TodoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? details = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? position = freezed,
  }) {
    return _then(_$TodoDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoDTOImpl extends _TodoDTO {
  const _$TodoDTOImpl(
      {required this.id,
      required this.title,
      required this.details,
      required this.userId,
      required this.createdAt,
      this.position})
      : super._();

  factory _$TodoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String details;
  @override
  final String userId;
  @override
  final String createdAt;
  @override
  final int? position;

  @override
  String toString() {
    return 'TodoDTO(id: $id, title: $title, details: $details, userId: $userId, createdAt: $createdAt, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, details, userId, createdAt, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDTOImplCopyWith<_$TodoDTOImpl> get copyWith =>
      __$$TodoDTOImplCopyWithImpl<_$TodoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoDTOImplToJson(
      this,
    );
  }
}

abstract class _TodoDTO extends TodoDTO {
  const factory _TodoDTO(
      {required final String id,
      required final String title,
      required final String details,
      required final String userId,
      required final String createdAt,
      final int? position}) = _$TodoDTOImpl;
  const _TodoDTO._() : super._();

  factory _TodoDTO.fromJson(Map<String, dynamic> json) = _$TodoDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get details;
  @override
  String get userId;
  @override
  String get createdAt;
  @override
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$TodoDTOImplCopyWith<_$TodoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

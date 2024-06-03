// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskState {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskStatus get taskStatus => throw _privateConstructorUsedError;
  AddTaskStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskStateCopyWith<AddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskStateCopyWith<$Res> {
  factory $AddTaskStateCopyWith(
          AddTaskState value, $Res Function(AddTaskState) then) =
      _$AddTaskStateCopyWithImpl<$Res, AddTaskState>;
  @useResult
  $Res call(
      {String title,
      String? description,
      TaskStatus taskStatus,
      AddTaskStatus status,
      Object? error});
}

/// @nodoc
class _$AddTaskStateCopyWithImpl<$Res, $Val extends AddTaskState>
    implements $AddTaskStateCopyWith<$Res> {
  _$AddTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? taskStatus = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskStateImplCopyWith<$Res>
    implements $AddTaskStateCopyWith<$Res> {
  factory _$$AddTaskStateImplCopyWith(
          _$AddTaskStateImpl value, $Res Function(_$AddTaskStateImpl) then) =
      __$$AddTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      TaskStatus taskStatus,
      AddTaskStatus status,
      Object? error});
}

/// @nodoc
class __$$AddTaskStateImplCopyWithImpl<$Res>
    extends _$AddTaskStateCopyWithImpl<$Res, _$AddTaskStateImpl>
    implements _$$AddTaskStateImplCopyWith<$Res> {
  __$$AddTaskStateImplCopyWithImpl(
      _$AddTaskStateImpl _value, $Res Function(_$AddTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? taskStatus = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$AddTaskStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AddTaskStateImpl extends _AddTaskState {
  const _$AddTaskStateImpl(
      {this.title = '',
      this.description = '',
      this.taskStatus = TaskStatus.open,
      this.status = AddTaskStatus.initial,
      this.error})
      : super._();

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final TaskStatus taskStatus;
  @override
  @JsonKey()
  final AddTaskStatus status;
  @override
  final Object? error;

  @override
  String toString() {
    return 'AddTaskState(title: $title, description: $description, taskStatus: $taskStatus, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, taskStatus,
      status, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      __$$AddTaskStateImplCopyWithImpl<_$AddTaskStateImpl>(this, _$identity);
}

abstract class _AddTaskState extends AddTaskState {
  const factory _AddTaskState(
      {final String title,
      final String? description,
      final TaskStatus taskStatus,
      final AddTaskStatus status,
      final Object? error}) = _$AddTaskStateImpl;
  const _AddTaskState._() : super._();

  @override
  String get title;
  @override
  String? get description;
  @override
  TaskStatus get taskStatus;
  @override
  AddTaskStatus get status;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskStateImplCopyWith<_$AddTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

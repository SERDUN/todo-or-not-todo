// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_add_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksAddState {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskStatus get taskStatus => throw _privateConstructorUsedError;
  TasksAddStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksAddStateCopyWith<TasksAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksAddStateCopyWith<$Res> {
  factory $TasksAddStateCopyWith(
          TasksAddState value, $Res Function(TasksAddState) then) =
      _$TasksAddStateCopyWithImpl<$Res, TasksAddState>;
  @useResult
  $Res call(
      {String title,
      String? description,
      TaskStatus taskStatus,
      TasksAddStatus status});
}

/// @nodoc
class _$TasksAddStateCopyWithImpl<$Res, $Val extends TasksAddState>
    implements $TasksAddStateCopyWith<$Res> {
  _$TasksAddStateCopyWithImpl(this._value, this._then);

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
              as TasksAddStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksAddStateImplCopyWith<$Res>
    implements $TasksAddStateCopyWith<$Res> {
  factory _$$TasksAddStateImplCopyWith(
          _$TasksAddStateImpl value, $Res Function(_$TasksAddStateImpl) then) =
      __$$TasksAddStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      TaskStatus taskStatus,
      TasksAddStatus status});
}

/// @nodoc
class __$$TasksAddStateImplCopyWithImpl<$Res>
    extends _$TasksAddStateCopyWithImpl<$Res, _$TasksAddStateImpl>
    implements _$$TasksAddStateImplCopyWith<$Res> {
  __$$TasksAddStateImplCopyWithImpl(
      _$TasksAddStateImpl _value, $Res Function(_$TasksAddStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? taskStatus = null,
    Object? status = null,
  }) {
    return _then(_$TasksAddStateImpl(
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
              as TasksAddStatus,
    ));
  }
}

/// @nodoc

class _$TasksAddStateImpl extends _TasksAddState {
  const _$TasksAddStateImpl(
      {this.title = '',
      this.description = '',
      this.taskStatus = TaskStatus.open,
      this.status = TasksAddStatus.initial})
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
  final TasksAddStatus status;

  @override
  String toString() {
    return 'TasksAddState(title: $title, description: $description, taskStatus: $taskStatus, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksAddStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskStatus, taskStatus) ||
                other.taskStatus == taskStatus) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, taskStatus, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksAddStateImplCopyWith<_$TasksAddStateImpl> get copyWith =>
      __$$TasksAddStateImplCopyWithImpl<_$TasksAddStateImpl>(this, _$identity);
}

abstract class _TasksAddState extends TasksAddState {
  const factory _TasksAddState(
      {final String title,
      final String? description,
      final TaskStatus taskStatus,
      final TasksAddStatus status}) = _$TasksAddStateImpl;
  const _TasksAddState._() : super._();

  @override
  String get title;
  @override
  String? get description;
  @override
  TaskStatus get taskStatus;
  @override
  TasksAddStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$TasksAddStateImplCopyWith<_$TasksAddStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksState {
  TasksStatus get status => throw _privateConstructorUsedError;
  List<TaskStatus> get taskStatus => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;
  Object? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call(
      {TasksStatus status,
      List<TaskStatus> taskStatus,
      List<TaskModel> tasks,
      Object? exception});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? taskStatus = null,
    Object? tasks = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
      taskStatus: null == taskStatus
          ? _value.taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as List<TaskStatus>,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      exception: freezed == exception ? _value.exception : exception,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksStateImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksStateImplCopyWith(
          _$TasksStateImpl value, $Res Function(_$TasksStateImpl) then) =
      __$$TasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TasksStatus status,
      List<TaskStatus> taskStatus,
      List<TaskModel> tasks,
      Object? exception});
}

/// @nodoc
class __$$TasksStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateImpl>
    implements _$$TasksStateImplCopyWith<$Res> {
  __$$TasksStateImplCopyWithImpl(
      _$TasksStateImpl _value, $Res Function(_$TasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? taskStatus = null,
    Object? tasks = null,
    Object? exception = freezed,
  }) {
    return _then(_$TasksStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
      taskStatus: null == taskStatus
          ? _value._taskStatus
          : taskStatus // ignore: cast_nullable_to_non_nullable
              as List<TaskStatus>,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$TasksStateImpl extends _TasksState {
  const _$TasksStateImpl(
      {this.status = TasksStatus.initial,
      final List<TaskStatus> taskStatus = const [],
      final List<TaskModel> tasks = const [],
      this.exception})
      : _taskStatus = taskStatus,
        _tasks = tasks,
        super._();

  @override
  @JsonKey()
  final TasksStatus status;
  final List<TaskStatus> _taskStatus;
  @override
  @JsonKey()
  List<TaskStatus> get taskStatus {
    if (_taskStatus is EqualUnmodifiableListView) return _taskStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskStatus);
  }

  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Object? exception;

  @override
  String toString() {
    return 'TasksState(status: $status, taskStatus: $taskStatus, tasks: $tasks, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._taskStatus, _taskStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_taskStatus),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      __$$TasksStateImplCopyWithImpl<_$TasksStateImpl>(this, _$identity);
}

abstract class _TasksState extends TasksState {
  const factory _TasksState(
      {final TasksStatus status,
      final List<TaskStatus> taskStatus,
      final List<TaskModel> tasks,
      final Object? exception}) = _$TasksStateImpl;
  const _TasksState._() : super._();

  @override
  TasksStatus get status;
  @override
  List<TaskStatus> get taskStatus;
  @override
  List<TaskModel> get tasks;
  @override
  Object? get exception;
  @override
  @JsonKey(ignore: true)
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

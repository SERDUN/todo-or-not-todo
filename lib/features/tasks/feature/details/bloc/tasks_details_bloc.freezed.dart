// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksDetailsState {
  TaskModel? get task => throw _privateConstructorUsedError;
  TasksDetailsStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksDetailsStateCopyWith<TasksDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksDetailsStateCopyWith<$Res> {
  factory $TasksDetailsStateCopyWith(
          TasksDetailsState value, $Res Function(TasksDetailsState) then) =
      _$TasksDetailsStateCopyWithImpl<$Res, TasksDetailsState>;
  @useResult
  $Res call({TaskModel? task, TasksDetailsStatus status});

  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class _$TasksDetailsStateCopyWithImpl<$Res, $Val extends TasksDetailsState>
    implements $TasksDetailsStateCopyWith<$Res> {
  _$TasksDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TasksDetailsStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskModelCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasksDetailsStateImplCopyWith<$Res>
    implements $TasksDetailsStateCopyWith<$Res> {
  factory _$$TasksDetailsStateImplCopyWith(_$TasksDetailsStateImpl value,
          $Res Function(_$TasksDetailsStateImpl) then) =
      __$$TasksDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskModel? task, TasksDetailsStatus status});

  @override
  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class __$$TasksDetailsStateImplCopyWithImpl<$Res>
    extends _$TasksDetailsStateCopyWithImpl<$Res, _$TasksDetailsStateImpl>
    implements _$$TasksDetailsStateImplCopyWith<$Res> {
  __$$TasksDetailsStateImplCopyWithImpl(_$TasksDetailsStateImpl _value,
      $Res Function(_$TasksDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? status = null,
  }) {
    return _then(_$TasksDetailsStateImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TasksDetailsStatus,
    ));
  }
}

/// @nodoc

class _$TasksDetailsStateImpl implements _TasksDetailsState {
  const _$TasksDetailsStateImpl(
      {this.task, this.status = TasksDetailsStatus.initial});

  @override
  final TaskModel? task;
  @override
  @JsonKey()
  final TasksDetailsStatus status;

  @override
  String toString() {
    return 'TasksDetailsState(task: $task, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksDetailsStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksDetailsStateImplCopyWith<_$TasksDetailsStateImpl> get copyWith =>
      __$$TasksDetailsStateImplCopyWithImpl<_$TasksDetailsStateImpl>(
          this, _$identity);
}

abstract class _TasksDetailsState implements TasksDetailsState {
  const factory _TasksDetailsState(
      {final TaskModel? task,
      final TasksDetailsStatus status}) = _$TasksDetailsStateImpl;

  @override
  TaskModel? get task;
  @override
  TasksDetailsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$TasksDetailsStateImplCopyWith<_$TasksDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

part of 'add_task_cubit.dart';

enum AddTaskStatus {
  initial,
  loading,
  success,
}

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default('') String title,
    @Default('') String? description,
    @Default(TaskStatus.open) TaskStatus taskStatus,
    @Default(AddTaskStatus.initial) AddTaskStatus status,
    Object? error,
  }) = _AddTaskState;

  const AddTaskState._();

  List<TaskStatus> get taskStatuses => TaskStatus.values;

  bool get isFailure => error != null;

  bool get isSuccess => status == AddTaskStatus.success;
}

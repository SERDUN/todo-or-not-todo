part of 'add_task_cubit.dart';

enum AddTaskStatus {
  initial,
  loading,
  success,
}

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default('') String parentTaskId,
    @Default('') String title,
    @Default('') String? description,
    @Default(TaskStatus.open) TaskStatus taskStatus,
    @Default(TaskPriority.minor) TaskPriority taskPriority,
    @Default(AddTaskStatus.initial) AddTaskStatus status,
    Object? error,
  }) = _AddTaskState;

  const AddTaskState._();

  List<TaskStatus> get allTaskStatuses => TaskStatus.values;

  List<TaskPriority> get allTaskPriority => TaskPriority.values;

  bool get isFailure => error != null;

  bool get isSuccess => status == AddTaskStatus.success;

  bool get isProgress => status == AddTaskStatus.loading;
}

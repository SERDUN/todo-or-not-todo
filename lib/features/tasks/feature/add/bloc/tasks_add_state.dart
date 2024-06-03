part of 'tasks_add_cubit.dart';

enum TasksAddStatus {
  initial,
  loading,
  success,
}

@freezed
class TasksAddState with _$TasksAddState {
  const factory TasksAddState({
    @Default('') String title,
    @Default('') String? description,
    @Default(TaskStatus.open) TaskStatus taskStatus,
    @Default(TasksAddStatus.initial) TasksAddStatus status,
    Object? error,
  }) = _TasksAddState;

  const TasksAddState._();

  List<TaskStatus> get taskStatuses => TaskStatus.values;

  bool get isFailure => error != null;

  bool get isSuccess => status == TasksAddStatus.success;
}

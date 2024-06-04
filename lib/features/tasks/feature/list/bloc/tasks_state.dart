part of 'tasks_bloc.dart';

enum TasksStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class TasksState with _$TasksState {
  const factory TasksState({
    @Default(TasksStatus.initial) TasksStatus status,
    @Default([]) List<TaskStatus> taskStatus,
    @Default([]) List<TaskModel> tasks,
    Object? exception,
  }) = _TasksState;

  const TasksState._();

  bool get isProgress => status == TasksStatus.initial || status == TasksStatus.loading;

  List<TaskStatus> get taskStatuses => TaskStatus.values;

  List<TaskModel> get filteredTasks => tasks.where((task) => taskStatus.contains(task.status)).toList();
}

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
    @Default([]) List<TaskModel> tasks,
    Object? exception,
  }) = _TasksState;
}

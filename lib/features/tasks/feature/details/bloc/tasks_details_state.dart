part of 'tasks_details_bloc.dart';

enum TasksDetailsStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class TasksDetailsState with _$TasksDetailsState {
  const factory TasksDetailsState({
    TaskModel? task,
    @Default(TasksDetailsStatus.initial) TasksDetailsStatus status,
  }) = _TasksDetailsState;
}

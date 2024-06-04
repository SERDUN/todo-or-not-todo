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
    Object? failure,
  }) = _TasksDetailsState;

  const TasksDetailsState._();

  bool get isFailure => failure != null;

  bool get isProgress => status == TasksDetailsStatus.initial || status == TasksDetailsStatus.loading;
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Cubit<TasksState> {
  TasksBloc(
    this.getAllTasksUseCase,
    this.deleteTaskByIdUseCase,
    this.updateTaskByIdUseCase,
  ) : super(const TasksState(taskStatus: TaskStatus.values)) {
    _init();
  }

  final GetAllTasksUseCase getAllTasksUseCase;
  final DeleteTaskByIdUseCase deleteTaskByIdUseCase;
  final UpdateTaskByIdUseCase updateTaskByIdUseCase;

  FutureOr<void> fetch(dynamic value) async {
    unawaited(_getTasks());
  }

  Future<void> _init() async {
    unawaited(_getTasks());
  }

  Future<void> delete(String id) async {
    emit(state.copyWith(status: TasksStatus.loading));
    await deleteTaskByIdUseCase.execute(id);
    unawaited(_getTasks());
  }

  Future<void> addFilteringTaskStatus(TaskStatus status) async {
    emit(state.copyWith(taskStatus: List.from(state.taskStatus)..add(status)));
  }

  Future<void> removeFilteringTaskStatus(TaskStatus status) async {
    emit(state.copyWith(taskStatus: List.from(state.taskStatus)..remove(status)));
  }

  Future<void> updatePosition(int oldIndex, int newIndex) async {
    final task = state.tasks[oldIndex];

    final updatedTasks = List<TaskModel>.from(state.tasks)
      ..removeAt(oldIndex)
      ..insert(newIndex, task);

    for (var i = 0; i < updatedTasks.length; i++) {
      updatedTasks[i] = updatedTasks[i].copyWith(position: i);
    }
    emit(state.copyWith(
      status: TasksStatus.loading,
      tasks: updatedTasks,
    ));

    await updateTaskByIdUseCase.execute(task.id, task.copyWith(position: newIndex));

    unawaited(_getTasks());
  }

  Future<void> _getTasks() async {
    emit(state.copyWith(status: TasksStatus.loading));
    // try {
    final tasks = await getAllTasksUseCase.execute();
    emit(state.copyWith(status: TasksStatus.success, tasks: tasks));
    // } catch (e) {
    //   emit(state.copyWith(status: TasksStatus.error,exception: e));
    // }
  }
}

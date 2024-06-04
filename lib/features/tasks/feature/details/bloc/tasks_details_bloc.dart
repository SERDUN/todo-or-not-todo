import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'tasks_details_state.dart';

part 'tasks_details_bloc.freezed.dart';

class TasksDetailsBloc extends Cubit<TasksDetailsState> {
  TasksDetailsBloc(
    this.taskId,
    this.getTaskByIdUseCase,
  ) : super(const TasksDetailsState()) {
    _init();
  }

  final String taskId;

  final GetTaskByIdUseCase getTaskByIdUseCase;

  FutureOr<void> fetch(dynamic value) async {
    unawaited(getTask(taskId));
  }

  void _init() {
    getTask(taskId);
  }

  Future<void> getTask(String id) async {
    emit(state.copyWith(status: TasksDetailsStatus.loading));
    try {
      final task = await getTaskByIdUseCase.execute(taskId);

      emit(state.copyWith(
        status: TasksDetailsStatus.success,
        task: task,
      ));
    } catch (e) {
      emit(state.copyWith(failure: e));
    }
  }
}

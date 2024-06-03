import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Cubit<TasksState> {
  TasksBloc(this.getAllTasksUseCase) : super(const TasksState()) {
    _init();
  }

  final GetAllTasksUseCase getAllTasksUseCase;

  Future<void> _init() async {
    unawaited(_getTasks());
  }

  Future<void> _getTasks() async {
    emit(state.copyWith(status: TasksStatus.loading));
    try {
      final tasks = await getAllTasksUseCase.execute();
      emit(state.copyWith(status: TasksStatus.success, tasks: tasks));
    } catch (e) {
      emit(state.copyWith(status: TasksStatus.error, exception: e));
    }
  }
}

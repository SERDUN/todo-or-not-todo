import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'tasks_details_state.dart';

part 'tasks_details_bloc.freezed.dart';

class TasksDetailsBloc extends Cubit<TasksDetailsState> {
  TasksDetailsBloc(this.taskId) : super(const TasksDetailsState()) {
    _init();
  }

  final String taskId;

  void _init() {
    getTask(taskId);
  }

  // TODO(Kovalchuck): Implement the function
  void getTask(String id) {
    emit(state.copyWith(status: TasksDetailsStatus.loading));
    try {
      emit(state.copyWith(
        task: const TaskModel(title: 'Task 1', content: 'Content of Task 1', id: '1'),
      ));
      emit(state.copyWith(status: TasksDetailsStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TasksDetailsStatus.error));
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'tasks_state.dart';

part 'tasks_bloc.freezed.dart';

class TasksBloc extends Cubit<TasksState> {
  TasksBloc() : super(const TasksState());

  // TODO(Kovalchuck): Implement the function
  void getTasks() {
    emit(state.copyWith(status: TasksStatus.loading));
    try {
      final tasks = [
        const TaskModel(title: 'Task 1', content: 'Content of Task 1', id: 1),
        const TaskModel(title: 'Task 2', content: 'Content of Task 2', id: 2),
        const TaskModel(title: 'Task 3', content: 'Content of Task 3', id: 3),
        const TaskModel(title: 'Task 4', content: 'Content of Task 4', id: 4),
        const TaskModel(title: 'Task 5', content: 'Content of Task 5', id: 5),
      ];
      emit(state.copyWith(status: TasksStatus.success, tasks: tasks));
    } catch (e) {
      emit(state.copyWith(status: TasksStatus.error));
    }
  }
}

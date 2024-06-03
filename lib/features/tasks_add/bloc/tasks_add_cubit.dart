import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_add_state.dart';

part 'tasks_add_cubit.freezed.dart';

class TasksAddCubit extends Cubit<TasksAddState> {
  TasksAddCubit() : super(const TasksAddState());

  void updateTitleField(String title) => emit(state.copyWith(title: title));

  void updateDescriptionField(String description) => emit(state.copyWith(description: description));

  void updateTaskStatusField(TaskStatus status) => emit(state.copyWith(taskStatus: status));

  void saver() {}
}

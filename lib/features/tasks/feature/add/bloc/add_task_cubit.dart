import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

import 'package:domain/domain.dart';

part 'add_task_state.dart';

part 'add_task_cubit.freezed.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(
    this.createTaskUseCase,
    this.setSubTaskUseCase,
    String parentTaskId,
  ) : super(AddTaskState(parentTaskId: parentTaskId));

  final SetSubTaskUseCase setSubTaskUseCase;
  final CreateTaskUseCase createTaskUseCase;

  void updateTitleField(String title) => emit(state.copyWith(title: title));

  void updateDescriptionField(String description) => emit(state.copyWith(description: description));

  void updateTaskStatusField(TaskStatus status) => emit(state.copyWith(taskStatus: status));

  void updateTaskPriorityField(TaskPriority status) => emit(state.copyWith(taskPriority: status));

  Future<void> save() async {
    try {
      if (state.parentTaskId.isNotEmpty) {
        await setSubTaskUseCase.execute(
            state.parentTaskId,
            TaskModel(
              id: '',
              title: state.title,
              content: state.description ?? '',
              status: state.taskStatus,
              priority: state.taskPriority,
            ));
      } else {
        // TODO(Serdun): remove id
        await createTaskUseCase.execute(TaskModel(
          id: '',
          title: state.title,
          content: state.description ?? '',
          status: state.taskStatus,
          priority: state.taskPriority,
        ));
      }
      emit(state.copyWith(status: AddTaskStatus.success));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}

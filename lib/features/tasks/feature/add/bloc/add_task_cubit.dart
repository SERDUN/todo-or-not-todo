import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

import 'package:domain/domain.dart';

part 'add_task_state.dart';

part 'add_task_cubit.freezed.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(this.createTaskUseCase) : super(const AddTaskState());

  final CreateTaskUseCase createTaskUseCase;

  void updateTitleField(String title) => emit(state.copyWith(title: title));

  void updateDescriptionField(String description) => emit(state.copyWith(description: description));

  void updateTaskStatusField(TaskStatus status) => emit(state.copyWith(taskStatus: status));

  Future<void> save() async {
    try {
      // TODO(Serdun): remove id
      await createTaskUseCase.execute(TaskModel(id: '', title: state.title, content: state.description ?? ''));
      emit(state.copyWith(status: AddTaskStatus.success));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}

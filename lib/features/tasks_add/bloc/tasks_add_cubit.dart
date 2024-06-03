import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_add_state.dart';

part 'tasks_add_cubit.freezed.dart';

class TasksAddCubit extends Cubit<TasksAddState> {
  TasksAddCubit(this.createTaskUseCase) : super(const TasksAddState());

  final CreateTaskUseCase createTaskUseCase;

  void updateTitleField(String title) => emit(state.copyWith(title: title));

  void updateDescriptionField(String description) => emit(state.copyWith(description: description));

  void updateTaskStatusField(TaskStatus status) => emit(state.copyWith(taskStatus: status));

  Future<void> save() async {
    try {
      // TODO(Serdun): remove id
      await createTaskUseCase.execute(TaskModel(id: '', title: state.title, content: state.description ?? ''));
      emit(state.copyWith(status: TasksAddStatus.success));
    } catch (e) {
      emit(state.copyWith(error: e));
    }
  }
}

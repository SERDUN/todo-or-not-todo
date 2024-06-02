import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: UpdateTaskByIdUseCase)
class UpdateTaskByIdUseCaseImpl implements UpdateTaskByIdUseCase {
  UpdateTaskByIdUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<TaskModel> execute(String id, TaskModel task) async {
    return taskRepository.updateTaskById(id, task);
  }
}

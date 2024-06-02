import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: CreateTaskUseCase)
class CreateTaskUseCaseImpl implements CreateTaskUseCase {
  CreateTaskUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<TaskModel> call(TaskModel task) async {
    return taskRepository.createTask(task);
  }
}

import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: GetAllTasksUseCase)
class GetAllTasksUseCaseImpl implements GetAllTasksUseCase {
  GetAllTasksUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<List<TaskModel>> call() async {
    return taskRepository.getAllTasks();
  }
}

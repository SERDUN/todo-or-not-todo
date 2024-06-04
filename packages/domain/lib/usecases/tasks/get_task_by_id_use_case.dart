import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: GetTaskByIdUseCase)
class GetTaskByIdUseCaseImpl implements GetTaskByIdUseCase {
  GetTaskByIdUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<TaskModel> execute(String id) async {
    return taskRepository.getTaskById(id);
  }
}

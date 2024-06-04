import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: SetSubTaskUseCase)
class CreateTaskUseCaseImpl implements SetSubTaskUseCase {
  CreateTaskUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<void> execute(String taskId, TaskModel subTask) async {
    final subTaskResponse = await taskRepository.createTask(subTask);
    final task = await taskRepository.getTaskById(taskId);
    final updatedTask = TaskModel(id: '', title: '', content: '', subTask: [...task.subTask, subTaskResponse.id]);
    await taskRepository.updateTaskById(taskId, updatedTask);
    return Future.value();
  }
}

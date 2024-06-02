import 'package:domain/domain.dart';

abstract class TaskRepository {
  Future<TaskModel> createTask(TaskModel task);

  Future<TaskModel> getTaskById(String id);

  Future<List<TaskModel>> getAllTasks();

  Future<TaskModel> updateTaskById(String id, TaskModel task);

  Future<void> deleteTaskById(String id);
}

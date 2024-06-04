import 'package:domain/models/models.dart';

abstract class SetSubTaskUseCase {
  Future<void> execute(String taskId, TaskModel subTask);
}

abstract class CreateTaskUseCase {
  Future<TaskModel> execute(TaskModel task);
}

abstract class GetTaskByIdUseCase {
  Future<TaskModel> execute(String id);
}

abstract class GetAllTasksUseCase {
  Future<List<TaskModel>> execute();
}

abstract class UpdateTaskByIdUseCase {
  Future<void> execute(String id, TaskModel task);
}

abstract class DeleteTaskByIdUseCase {
  Future<void> execute(String id);
}

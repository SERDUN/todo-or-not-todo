import 'package:domain/models/models.dart';

abstract class CreateTaskUseCase {
  Future<TaskModel> call(TaskModel task);
}

abstract class GetTaskByIdUseCase {
  Future<TaskModel> call(String id);
}

abstract class GetAllTasksUseCase {
  Future<List<TaskModel>> call();
}

abstract class UpdateTaskByIdUseCase {
  Future<TaskModel> call(String id, TaskModel task);
}

abstract class DeleteTaskByIdUseCase {
  Future<void> call(String id);
}

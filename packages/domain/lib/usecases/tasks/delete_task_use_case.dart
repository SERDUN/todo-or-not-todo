import 'package:injectable/injectable.dart';

import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: DeleteTaskByIdUseCase)
class DeleteTaskByIdUseCaseImpl implements DeleteTaskByIdUseCase {
  DeleteTaskByIdUseCaseImpl(this.taskRepository);

  final TaskRepository taskRepository;

  @override
  Future<void> call(String id) async {
    return taskRepository.deleteTaskById(id);
  }
}

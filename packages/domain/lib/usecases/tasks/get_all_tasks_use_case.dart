import 'package:injectable/injectable.dart';

import 'package:domain/models/models.dart';
import 'package:domain/repositories/repositories.dart';

import 'tasks.dart';

@Injectable(as: GetAllTasksUseCase)
class GetAllTasksUseCaseImpl implements GetAllTasksUseCase {
  GetAllTasksUseCaseImpl(this._taskRepository);

  final TaskRepository _taskRepository;

  @override
  Future<List<TaskModel>> execute() async {
    final tasks = await _taskRepository.getAllTasks();
    final filteredTasks = _filterTasks(tasks)..sort(_compareTasks);
    return filteredTasks;
  }

  List<TaskModel> _filterTasks(List<TaskModel> tasks) {
    final subTaskIds = tasks.where((task) => task.subTask.isNotEmpty).expand((task) => task.subTask).toSet();
    return tasks.where((task) => !subTaskIds.contains(task.id)).toList();
  }

  int _compareTasks(TaskModel a, TaskModel b) {
    if (a.position != null && b.position != null) {
      return a.position!.compareTo(b.position!);
    } else if (a.position == null && b.position == null) {
      return _compareByDeadline(a, b);
    } else if (a.position == null) {
      return 1;
    } else {
      return -1;
    }
  }

  int _compareByDeadline(TaskModel a, TaskModel b) {
    if (a.deadline != null && b.deadline != null) {
      return a.deadline!.compareTo(b.deadline!);
    } else if (a.deadline == null && b.deadline == null) {
      return 0;
    } else if (a.deadline == null) {
      return 1;
    } else {
      return -1;
    }
  }
}

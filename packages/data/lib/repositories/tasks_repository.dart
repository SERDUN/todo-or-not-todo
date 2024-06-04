import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import 'package:data/dtos/todo/todo.dart';
import 'package:domain/domain.dart';

import '../datasources/datasources.dart';

@Injectable(as: TaskRepository)
class TasksRepositoryImpl implements TaskRepository {
  TasksRepositoryImpl(this.remoteDatasource);

  final RemoteDatasource remoteDatasource;

  @override
  Future<TaskModel> createTask(TaskModel task) async {
    final dto = TaskMapper.toDTO(task);
    final createdDto = await remoteDatasource.createTodo(dto);
    return TaskMapper.fromDTO(createdDto);
  }

  @override
  Future<TaskModel> getTaskById(String id) async {
    final dto = await remoteDatasource.getTodoById(id);
    return TaskMapper.fromDTO(dto);
  }

  @override
  Future<List<TaskModel>> getAllTasks() async {
    final dtos = await remoteDatasource.getAllTodos();
    return dtos.map(TaskMapper.fromDTO).toList();
  }

  @override
  Future<void> updateTaskById(String id, TaskModel task) async {
    final dto = TaskMapper.toDTO(task);
    final updatedDto = await remoteDatasource.updateTodoById(id, dto);
    return Future.value();
  }

  @override
  Future<void> deleteTaskById(String id) async {
    await remoteDatasource.deleteTodoById(id);
  }
}

// TODO(Serdun): Add correct mapper
class TaskMapper {
  static TaskModel fromDTO(TodoDTO dto) {
    return TaskModel(
      id: dto.id,
      title: dto.title,
      content: dto.details,
      deadline: DateTime.parse(dto.createdAt),
      position: dto.position,
      status: TaskStatus.values.firstWhereOrNull((it) => it.key == dto.status),
      priority: TaskPriority.values.firstWhereOrNull((it) => it.key == dto.priority),
      subTask: dto.subTasks ?? [],
    );
  }
  
// TODO(Serdun): Add correct mapper
  static TodoDTO toDTO(TaskModel model) {
    return TodoDTO(
      id: model.id,
      title: model.title,
      details: model.content,
      userId: '',
      createdAt: model.deadline?.toIso8601String() ?? DateTime.now().toIso8601String(),
      position: model.position,
      status: model.status?.key ?? TaskStatus.open.key,
      priority: model.priority?.key ?? TaskPriority.minor.key,
      subTasks: model.subTask,
    );
  }
}

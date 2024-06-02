import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:data/dtos/auth/auth.dart';
import 'package:data/dtos/todo/todo.dart';

@injectable
class RemoteDatasource {
  RemoteDatasource(this.httpClient);

  final Dio httpClient;

  Future<AuthResponseDto> login(LoginDto login) async {
    final response = await httpClient.post<Map<String, dynamic>>('/auth/login', data: login.toJson());
    return AuthResponseDto.fromJson(response.extra);
  }

  Future<AuthResponseDto> register(RegisterDto register) async {
    final response = await httpClient.post<Map<String, dynamic>>('/auth/register', data: register.toJson());
    return AuthResponseDto.fromJson(response.extra);
  }

  Future<TodoDTO> createTodo(TodoDTO todo) async {
    final response = await httpClient.post<Map<String, dynamic>>('/todos', data: todo.toJson());
    return TodoDTO.fromJson(response.extra);
  }

  Future<TodoDTO> getTodoById(String id) async {
    final response = await httpClient.get<Map<String, dynamic>>('/todos/$id');
    return TodoDTO.fromJson(response.extra);
  }

  Future<List<TodoDTO>> getAllTodos() async {
    final response = await httpClient.get<List<dynamic>>('/todos');
    return (response.extra as List).map((e) => TodoDTO.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<TodoDTO> updateTodoById(String id, TodoDTO todo) async {
    final response = await httpClient.put<Map<String, dynamic>>('/todos/$id', data: todo.toJson());
    return TodoDTO.fromJson(response.extra);
  }

  Future<void> deleteTodoById(String id) async {
    await httpClient.delete<Map<String, dynamic>>('/todos/$id');
  }
}

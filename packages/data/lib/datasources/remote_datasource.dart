import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:data/dtos/dtos.dart';

import 'local_keys_datasource.dart';

@injectable
class RemoteDatasource {
  RemoteDatasource(this.httpClient, this.localKeysDatasource);

  final Dio httpClient;
  final LocalKeysDatasource localKeysDatasource;

  Future<AuthResponseDto> login(LoginDto login) async {
    final response = await httpClient.post<Map<String, dynamic>>('/auth/login', data: login.toJson());
    return AuthResponseDto.fromJson(response.data!);
  }

  Future<AuthResponseDto> register(RegisterDto register) async {
    final response = await httpClient.post<Map<String, dynamic>>('/auth/register', data: register.toJson());
    return AuthResponseDto.fromJson(response.data!);
  }

  Future<TodoDTO> createTodo(TodoDTO todo) async {
    final options = await _getOptionsWithToken();
    final response = await httpClient.post<Map<String, dynamic>>(
      '/todo',
      // TODO(Serdun): Work around for correct work with api, fix on server side.
      data: todo.toJson()..remove('id'),
      options: options,
    );
    return TodoDTO.fromJson(response.data!);
  }

  Future<TodoDTO> getTodoById(String id) async {
    final options = await _getOptionsWithToken();
    final response = await httpClient.get<Map<String, dynamic>>(
      '/todo/$id',
      options: options,
    );
    return TodoDTO.fromJson(response.data!);
  }

  Future<List<TodoDTO>> getAllTodos() async {
    final options = await _getOptionsWithToken();
    final response = await httpClient.get<List<dynamic>>(
      '/todo',
      options: options,
    );

    return (response.data!).map((e) => TodoDTO.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<TodoDTO> updateTodoById(String id, TodoDTO todo) async {
    final options = await _getOptionsWithToken();
    final response = await httpClient.put<Map<String, dynamic>>(
      '/todo/$id',
      data: todo.toJson(),
      options: options,
    );
    return TodoDTO.fromJson(response.data!);
  }

  Future<void> deleteTodoById(String id) async {
    final options = await _getOptionsWithToken();
    await httpClient.delete<Map<String, dynamic>>(
      '/todo/$id',
      options: options,
    );
  }

  Future<Options?> _getOptionsWithToken() async {
    final token = await localKeysDatasource.getToken();
    if (token != null) {
      return Options(headers: {'Authorization': 'Bearer $token'});
    }
    return null;
  }
}

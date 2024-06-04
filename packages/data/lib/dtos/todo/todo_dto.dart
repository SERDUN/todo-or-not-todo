import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';

part 'todo_dto.g.dart';

@freezed
class TodoDTO with _$TodoDTO {
  const factory TodoDTO({
    required String id,
    required String title,
    required String details,
    required String userId,
    required String createdAt,
    required String priority,
    required String status,
    int? position,
  }) = _TodoDTO;

  const TodoDTO._();

  factory TodoDTO.fromJson(Map<String, dynamic> json) => _$TodoDTOFromJson(json);

  // TODO(Serdun): Change or add new model to update task
  Map<String, dynamic> toJsonWithoutEmpty() {
    final data = toJson()..removeWhere((key, value) => value == null || value == '');
    return data;
  }
}

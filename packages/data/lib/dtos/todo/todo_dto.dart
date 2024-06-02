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
  }) = _TodoDTO;

  factory TodoDTO.fromJson(Map<String, dynamic> json) => _$TodoDTOFromJson(json);
}

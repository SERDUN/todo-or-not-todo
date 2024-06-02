import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required int position,
    required String title,
    required String content,
    required String status,
    required String deadline,
    required String priority,
  }) = _TaskModel;
}

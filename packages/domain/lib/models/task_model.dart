import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'task_model.freezed.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String title,
    required String content,
    int? position,
    TaskStatus? status,
    DateTime? deadline,
    TaskPriority? priority,
    @Default([]) List<String> subTask,
  }) = _TaskModel;
}

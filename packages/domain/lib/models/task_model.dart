import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int wordsToWin,
    required String email,
    required String password,
  }) = _TaskModel;
}

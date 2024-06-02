import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int wordsToWin,
    required String email,
    required String password,
  }) = _UserModel;
}

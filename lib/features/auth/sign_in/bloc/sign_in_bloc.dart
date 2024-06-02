import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc() : super(const SignInState());
}

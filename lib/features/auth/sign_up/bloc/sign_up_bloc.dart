import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc() : super(const SignUpState());
}

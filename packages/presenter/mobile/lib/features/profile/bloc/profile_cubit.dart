import 'package:bloc/bloc.dart';
import 'package:domain/usecases/usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.logoutUseCase) : super(const ProfileState());
  final LogoutUseCase logoutUseCase;

  void logout() {
    logoutUseCase.execute();
    emit(state.copyWith(status: ProfileStatus.logout));
  }
}

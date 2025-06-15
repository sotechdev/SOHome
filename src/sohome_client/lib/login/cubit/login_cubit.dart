import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sohome_client/data/repositories/auth_repository.dart';
import 'package:sohome_client/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(LoginInitial());

  final AuthRepository _authRepository;

  Stream<LoginState> get stateStream => stream;

  Future<void> signIn() async {
    emit(LoginLoading());
    try {
      final user = await _authRepository.signIn();
      if (user != null) {
        emit(AuthenticatedState(user));
      } else {
        emit(UnauthenticatedState());
      }
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(LoginLoading());
    await _authRepository.signOut();
    emit(UnauthenticatedState());
  }

  Future<void> checkAuthStatus() async {
    emit(LoginLoading());
    try {
      final user = await _authRepository.getAuthenticatedUser();
      if (user == null) {
        emit(UnauthenticatedState());
      } else {
        emit(AuthenticatedState(user));
      }
    } catch (e) {
      emit(UnauthenticatedState());
    }
  }
}

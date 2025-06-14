import 'package:equatable/equatable.dart';
import 'package:sohome_client/data/entities/user.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class AuthenticatedState extends LoginState {
  const AuthenticatedState(this.user);
  final User user;

  @override
  List<Object?> get props => [user];
}

final class UnauthenticatedState extends LoginState {}

final class LoginError extends LoginState {
  const LoginError(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

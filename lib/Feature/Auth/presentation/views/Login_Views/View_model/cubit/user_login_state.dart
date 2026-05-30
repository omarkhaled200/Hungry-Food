part of 'user_login_cubit.dart';

sealed class UserLoginState extends Equatable {
  const UserLoginState();

  @override
  List<Object> get props => [];
}

final class UserLoginInitial extends UserLoginState {}

final class UserLoginLoading extends UserLoginState {}

final class UserLoginFailure extends UserLoginState {
  final String errmessage;

  UserLoginFailure({required this.errmessage});
}

final class UserLoginSuccess extends UserLoginState {
  final LoginModel user;

  UserLoginSuccess(this.user);
}

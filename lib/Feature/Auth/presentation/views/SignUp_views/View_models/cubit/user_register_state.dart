part of 'user_register_cubit.dart';

sealed class UserRegisterState extends Equatable {
  const UserRegisterState();

  @override
  List<Object> get props => [];
}

final class UserRegisterInitial extends UserRegisterState {}

final class UserRegisterLoading extends UserRegisterState {}

final class UserRegisterFailure extends UserRegisterState {
  final String errmessage;

  UserRegisterFailure({required this.errmessage});
}

final class UserRegisterSuccess extends UserRegisterState {
  final RegisterModel user;

  UserRegisterSuccess(this.user);
}

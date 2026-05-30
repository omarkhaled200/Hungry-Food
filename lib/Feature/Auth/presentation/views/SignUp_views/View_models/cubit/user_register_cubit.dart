import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hungry_food/Feature/Auth/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Auth/data/models/register_model/register_model.dart';

part 'user_register_state.dart';

class UserRegisterCubit extends Cubit<UserRegisterState> {
  UserRegisterCubit(this.homeRepoImpl) : super(UserRegisterInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> userRegister({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) async {
    emit(UserRegisterLoading());
    var result = await homeRepoImpl.postRegister(
      Name: name,
      Email: email,
      password: password,
      phone: phone,
    );
    result.fold(
      (Failure) {
        emit(UserRegisterFailure(errmessage: Failure.errmessage));
      },
      (user) {
        emit(UserRegisterSuccess(user));
      },
    );
  }
}

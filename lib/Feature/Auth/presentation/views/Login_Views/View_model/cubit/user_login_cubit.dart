import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hungry_food/Feature/Auth/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Auth/data/models/login_model/login_model.dart';

part 'user_login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this.homeRepoImpl) : super(UserLoginInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> UserLogin({
    required String email,
    required String password,
  }) async {
    emit(UserLoginLoading());
    var result = await homeRepoImpl.postLogin(email: email, password: password);
    result.fold(
      (Failure) {
        emit(UserLoginFailure(errmessage: Failure.errmessage));
      },
      (user) {
        emit(UserLoginSuccess(user));
      },
    );
  }
}

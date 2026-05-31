import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hungry_food/Core/error/failure.dart';
import 'package:hungry_food/Core/utils/Token_Functions.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Auth/data/Repos/Home_Repo.dart';
import 'package:hungry_food/Feature/Auth/data/models/login_model/login_model.dart';
import 'package:hungry_food/Feature/Auth/data/models/register_model/register_model.dart';

class HomeRepoImpl extends AuthHomeRepo {
  final ApiClass apiClass;
  HomeRepoImpl(this.apiClass);
  @override
  Future<Either<Failure, LoginModel>> postLogin({
    required String email,
    required String password,
  }) async {
    try {
      var data = await apiClass.post(
        endpoint: 'login',
        body: {'email': email, 'password': password},
      );
      if (data != null && data is Map<String, dynamic>) {
        final userData = data['data'];

        if (userData != null &&
            userData is Map<String, dynamic> &&
            userData.containsKey('token')) {
          String token = userData['token'];

          await saveToken(token);

          LoginModel user = LoginModel.fromJson(userData);

          return right(user);
        } else {
          return left(ServerFailure('Missing token or user data in response'));
        }
      } else {
        return left(ServerFailure('Invalid response from server or null data'));
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, RegisterModel>> postRegister({
    required String Name,
    required String Email,
    required String password,
    required String phone,
  }) async {
    try {
      var data = await apiClass.post(
        endpoint: 'register',
        body: {
          'email': Email,
          'password': password,
          'name': Name,
          'phone': phone,
        },
      );

      // تحقق إذا كانت البيانات ليست null وأيضاً من نوع Map<String, dynamic>
      if (data != null && data is Map<String, dynamic>) {
        final userData = data['data'];
        if (userData.containsKey('token')) {
          String token = userData['token'];
          await saveToken(token);
          RegisterModel user = RegisterModel.fromJson(userData);
          return right(user);
        } else {
          return left(ServerFailure('Missing token or user data in response'));
        }
      } else {
        return left(ServerFailure('Invalid response from server or null data'));
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> postlogout({required String token}) async {
    try {
      var data = await apiClass.post(
        endpoint: 'logout',
        body: {},
        token: token,
      );

      // الحالة 1: فيه success
      if (data.containsKey('success')) {
        String message = data['success'] ?? 'Success but no message';
        return right(message);
      }

      // الحالة 2: فيه error
      if (data.containsKey('error')) {
        String errorMessage = data['error'] ?? 'Unknown error';
        return left(ServerFailure(errorMessage));
      }

      // الحالة 3: فيه message (بس مش success)
      if (data.containsKey('message')) {
        String message = data['message'] ?? 'Unknown message';
        return right(message);
      }

      // الحالة 4: مفيش حاجة مفهومة
      return left(ServerFailure('Unexpected API response'));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

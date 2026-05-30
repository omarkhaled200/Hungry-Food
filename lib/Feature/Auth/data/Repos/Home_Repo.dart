import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hungry_food/Core/error/failure.dart';
import 'package:hungry_food/Feature/Auth/data/models/login_model/login_model.dart';
import 'package:hungry_food/Feature/Auth/data/models/register_model/register_model.dart';

abstract class AuthHomeRepo {
  Future<Either<Failure, LoginModel>> postLogin({
    required String email,
    required String password,
  });

  Future<Either<Failure, RegisterModel>> postRegister({
    required String Name,
    required String Email,
    required String password,
    required String phone,
  });

  Future<Either<Failure, String>> postlogout({required String token});
}

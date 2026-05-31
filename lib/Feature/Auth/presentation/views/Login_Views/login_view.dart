import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Auth/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/Login_Views/View_model/cubit/user_login_cubit.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/Login_Views/widgets/Login_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserLoginCubit(HomeRepoImpl(ApiClass(Dio()))),
      child: const LoginViewBody(),
    );
  }
}

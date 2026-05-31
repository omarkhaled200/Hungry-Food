import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Auth/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/SignUp_views/View_models/cubit/user_register_cubit.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/SignUp_views/widgets/SignUp_View_Body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserRegisterCubit(HomeRepoImpl(ApiClass(Dio()))),
      child: const SignUpViewBody(),
    );
  }
}

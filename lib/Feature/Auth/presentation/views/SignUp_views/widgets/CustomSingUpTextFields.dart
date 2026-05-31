// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/CustomScaffoldMessenger.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/SignUp_views/View_models/cubit/user_register_cubit.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';
import 'package:hungry_food/Feature/shared/Custom_text_field.dart';
import 'package:hungry_food/Feature/shared/Valdiater.dart';

class CustomSingUpTextFields extends StatelessWidget {
  const CustomSingUpTextFields({super.key, required this.formkey});
  final GlobalKey<FormState> formkey;
  @override
  Widget build(BuildContext context) {
    String? email;
    String? username;
    String? password;
    String? phone;
    return BlocConsumer<UserRegisterCubit, UserRegisterState>(
      listener: (context, state) {
        if (state is UserRegisterFailure) {
          CustomScaffoldMessenger(
            context,
            "Error is : ${state.errmessage}",
            FontAwesomeIcons.circleXmark,
            Colors.red,
          );
        } else if (state is UserRegisterSuccess) {
          CustomScaffoldMessenger(
            context,
            "Added Successfully",
            Icons.check_circle_outline,
            Colors.green,
          );
          GoRouter.of(
            context,
          ).push(AppRouter.kroot, extra: {'userdata': state.user});
        }
      },
      builder: (context, state) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.kprimarycolor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gap(30),
                  CustomTextfield(
                    onchange: (data) {
                      username = data;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Name';
                      } else {
                        return null;
                      }
                    },
                    obscure: false,
                    hinttext: 'User name',
                    hintcolor: AppColors.kprimarycolor,
                    textcolor: AppColors.kprimarycolor,
                  ),
                  Gap(20),
                  CustomTextfield(
                    onchange: (data) {
                      email = data;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email like  ......@org.com';
                      }
                      if (!valdiate().valdiateemail(email: email) ||
                          !valdiate().valdiateemail(email: email)) {
                        return 'Please enter a valid email';
                      } else {
                        return null;
                      }
                    },
                    obscure: false,
                    hinttext: 'Email',
                    hintcolor: AppColors.kprimarycolor,
                    textcolor: AppColors.kprimarycolor,
                  ),
                  Gap(20),
                  CustomTextfield(
                    onchange: (data) {
                      password = data;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please  Enter your password';
                      }
                      if (!valdiate().valdiatepassword(password: password) ||
                          !valdiate().valdiatepassword(password: password)) {
                        return 'It must contain at least one uppercase letter (e.g., A, B, C...)\nIt must contain at least one lowercase letter (e.g., a, b, c...) \nIt must contain at least one number (e.g., 0, 1, 2...).\nIt must contain at least one special character (e.g., !, @, #, &, *, ~).\nIt must be at least 8 characters long';
                      } else {
                        return null;
                      }
                    },
                    obscure: true,
                    hinttext: 'password',
                    hintcolor: AppColors.kprimarycolor,
                    textcolor: AppColors.kprimarycolor,
                  ),
                  Gap(20),
                  CustomTextfield(
                    onchange: (data) {
                      phone = data;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your Phone number';
                      } else {
                        null;
                      }
                    },
                    obscure: false,
                    hinttext: 'Phone',
                    hintcolor: AppColors.kprimarycolor,
                    textcolor: AppColors.kprimarycolor,
                  ),
                  Gap(20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "already have account? ",
                          size: 13,
                          color: Colors.white,
                          weight: FontWeight.w500,
                        ),
                        GestureDetector(
                          onTap: () => GoRouter.of(context).pop(),
                          child: CustomText(
                            text: "Login",
                            size: 13,
                            color: Colors.blueGrey,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  CustomButton(
                    textcolor: Colors.black,
                    width: 300,
                    heaight: 100,
                    text: "Register",
                    backcolor: Colors.white,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        context.read<UserRegisterCubit>().userRegister(
                          email: email!,
                          password: password!,
                          phone: phone!,
                          name: username!,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

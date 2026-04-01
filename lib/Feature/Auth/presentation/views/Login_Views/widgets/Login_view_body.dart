import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hungry_food/Core/constants/app_colors.dart';

import 'package:hungry_food/Feature/Auth/presentation/views/Login_Views/widgets/CustomLoginViewTextFields.dart';

import 'package:hungry_food/Feature/shared/Custom_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formkey,
          child: Column(
            children: [
              Gap(150),
              Text(
                'Hungry?',
                style: TextStyle(
                  fontFamily: "LuckiestGuy",
                  fontSize: 60,
                  color: AppColors.kprimarycolor,
                ),
              ),
              CustomText(
                text: 'Welcome back,Discover the fast food ❤️',
                size: 13,
                color: AppColors.kprimarycolor,
                weight: FontWeight.w500,
              ),
              Gap(80),
              CustomLoginViewTextFields(formkey: formkey),
            ],
          ),
        ),
      ),
    );
  }
}

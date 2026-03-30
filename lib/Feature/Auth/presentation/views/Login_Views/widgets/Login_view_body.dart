import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/App_Router.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';
import 'package:hungry_food/Feature/shared/Custom_text_field.dart';
import 'package:hungry_food/Feature/shared/Valdiater.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    String? email;
    String? password;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.kprimarycolor,
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(100),
                Text(
                  'Hungry?',
                  style: TextStyle(
                    fontFamily: "LuckiestGuy",
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                CustomText(
                  text: 'Welcome back,Discover the fast food ❤️',
                  size: 13,
                  color: Colors.white,
                  weight: FontWeight.w500,
                ),
                Gap(100),
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
                    }
                  },
                  obscure: true,
                  hinttext: 'password',
                  hintcolor: AppColors.kprimarycolor,
                  textcolor: AppColors.kprimarycolor,
                ),
                Gap(20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Create an account? ",
                        size: 13,
                        color: Colors.white,
                        weight: FontWeight.w500,
                      ),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(AppRouter.ksignupview),
                        child: CustomText(
                          text: "Register",
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
                  text: "Login",
                  backcolor: Colors.white,
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      GoRouter.of(context).push(AppRouter.kroot);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

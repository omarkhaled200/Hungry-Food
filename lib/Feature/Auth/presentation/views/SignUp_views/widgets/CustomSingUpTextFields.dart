import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
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
    String? confirmpassword;
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
              CustomTextfield(
                onchange: (data) {
                  confirmpassword = data;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter your Confirm password';
                  }
                  if (value != password) {
                    return 'Confirm password not match password';
                  }
                  if (!valdiate().valdiatepassword(password: password) ||
                      !valdiate().valdiatepassword(password: password)) {
                    return 'Please enter a valid password';
                  }
                },
                obscure: true,
                hinttext: 'confirm password',
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
                    print("login successfully");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/shared/Custom_text_field.dart';

class CustomProfilePageTextFields extends StatelessWidget {
  const CustomProfilePageTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        CustomTextfield(
          hinttext: "Name",
          hintcolor: AppColors.kprimarycolor,
          textcolor: AppColors.kprimarycolor,
          obscure: false,
          backcolor: Colors.white,
          bordercolor: AppColors.kprimarycolor,
        ),
        Gap(20),
        CustomTextfield(
          hinttext: "Email",
          hintcolor: AppColors.kprimarycolor,
          textcolor: AppColors.kprimarycolor,
          obscure: false,
          backcolor: Colors.white,
          bordercolor: AppColors.kprimarycolor,
        ),
        Gap(20),
        CustomTextfield(
          hinttext: "Delivery address",
          hintcolor: AppColors.kprimarycolor,
          textcolor: AppColors.kprimarycolor,
          obscure: false,
          backcolor: Colors.white,
          bordercolor: AppColors.kprimarycolor,
        ),
        Gap(20),
        CustomTextfield(
          prefixicon: Icon(
            CupertinoIcons.lock_fill,
            color: AppColors.kprimarycolor,
          ),
          hinttext: "Password",
          hintcolor: AppColors.kprimarycolor,
          textcolor: AppColors.kprimarycolor,
          obscure: true,
          backcolor: Colors.white,
          bordercolor: AppColors.kprimarycolor,
        ),
        Gap(10),
      ],
    );
  }
}

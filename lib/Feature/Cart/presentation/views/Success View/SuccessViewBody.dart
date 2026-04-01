import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // يمنع القفل لما تدوس برا
    barrierColor: Colors.black.withOpacity(0.5),
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: 250,
          height: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Icon(
                CupertinoIcons.check_mark_circled_solid,
                color: AppColors.kprimarycolor,
                size: 50,
              ),

              CustomText(
                text: "Success !",
                size: 30,
                color: AppColors.kprimarycolor,
                weight: FontWeight.w500,
              ),

              Gap(5),

              Text(
                'Your payment was successful.\n A receipt for this purchase has \n been sent to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffBCBBBB), fontSize: 14),
              ),

              Gap(30),

              CustomButton(
                backcolor: AppColors.kprimarycolor,
                width: 250,
                heaight: 90,

                text: 'Go Back',
                textcolor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  GoRouter.of(context).go(AppRouter.kroot);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

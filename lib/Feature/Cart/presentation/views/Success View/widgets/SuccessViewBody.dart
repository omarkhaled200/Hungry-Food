import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/App_Router.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBCBBBB),
      body: Center(
        child: Container(
          width: 250,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                style: TextStyle(
                  color: Color(0xffBCBBBB),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(30),
              CustomButton(
                backcolor: AppColors.kprimarycolor,
                width: 250,
                heaight: 90,
                text: 'Go Back',
                textcolor: Colors.white,
                onPressed: () {
                  GoRouter.of(context).go(AppRouter.kroot);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

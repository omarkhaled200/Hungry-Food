import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomProductCarditem extends StatelessWidget {
  const CustomProductCarditem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kproductdetials);
      },
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AssetsDate.product, width: 120)),
              Gap(5),
              CustomText(
                text: "Cheeseburger",
                size: 15,
                color: Colors.black,
                weight: FontWeight.w500,
              ),
              CustomText(
                text: "Wendy's Burger",
                size: 13,
                color: Colors.black,
                weight: FontWeight.w400,
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      CustomText(
                        text: "4.9",
                        size: 15,
                        color: Colors.black,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: AppColors.kprimarycolor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

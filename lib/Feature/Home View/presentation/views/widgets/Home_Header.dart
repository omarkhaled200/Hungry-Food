import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hungry?',
                    style: TextStyle(
                      fontFamily: "LuckiestGuy",
                      fontSize: 50,
                      color: AppColors.kprimarycolor,
                    ),
                  ),
                  CustomText(
                    text: "Hello, Omar",
                    size: 15,
                    color: Colors.black87,
                    weight: FontWeight.w500,
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Image.asset(AssetsDate.profile),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ProdcutInfo extends StatefulWidget {
  const ProdcutInfo({super.key});

  @override
  State<ProdcutInfo> createState() => _ProdcutInfoState();
}

class _ProdcutInfoState extends State<ProdcutInfo> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsDate.choose, height: 300),
        Gap(10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text:
                    'Customize Your Burger \n to Your Tastes.\n Ultimate Experience',
                size: 15,
                color: Colors.black,
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "Spicy",
                size: 15,
                color: Colors.black,
                weight: FontWeight.w600,
              ),
              Slider(
                min: 0,
                max: 100,
                value: _currentvalue,
                activeColor: AppColors.kprimarycolor,
                onChanged: (value) {
                  setState(() {
                    _currentvalue = value;
                  });
                },
              ),
              Row(
                children: [
                  Spacer(flex: 1),
                  Image.asset(AssetsDate.cold),
                  Spacer(flex: 5),
                  Image.asset(AssetsDate.fire),
                  Spacer(flex: 1),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

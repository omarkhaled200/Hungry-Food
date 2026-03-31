import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Cart%20View/widgets/Custom_increment_Decrement_Btn.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomCartViewCartItem extends StatelessWidget {
  const CustomCartViewCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AssetsDate.product, width: 110),
                Gap(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Hamburger",
                      size: 16,
                      color: Colors.black,
                      weight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "Veggie Burger",
                      size: 14,
                      color: Colors.black,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Spacer(),
          CustomIncrementandDecremetnBtn(),
          Gap(16),
        ],
      ),
    );
  }
}

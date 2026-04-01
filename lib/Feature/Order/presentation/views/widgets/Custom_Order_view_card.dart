import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomOrderViewCard extends StatelessWidget {
  const CustomOrderViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AssetsDate.product, width: 110),
                Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Hamburger Hamburger",
                      size: 16,
                      color: Colors.black,
                      weight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "QTY: 3x",
                      size: 14,
                      color: Colors.black,
                      weight: FontWeight.w400,
                    ),
                    CustomText(
                      text: "Price: 20\$",
                      size: 14,
                      color: Colors.black,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(10),
          CustomButton(
            width: 400,
            heaight: 90,
            text: "Order Again",
            textcolor: Colors.white,
            backcolor: Colors.grey.shade400,
            onPressed: () {},
          ),
          Gap(10),
        ],
      ),
    );
  }
}

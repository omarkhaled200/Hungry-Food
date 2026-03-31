import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Order",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "Taxes",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "Delivery fees",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              CustomText(
                text: "\$16.48",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "\$0.3",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "\$1.5",
                size: 15,
                color: Color(0xff7D7D7D),
                weight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

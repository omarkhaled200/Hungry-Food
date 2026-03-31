import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class TotalPriceSummary extends StatelessWidget {
  const TotalPriceSummary({super.key});

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
                text: "Total",
                size: 18,
                color: Color(0xff3C2F2F),
                weight: FontWeight.w600,
              ),
              Gap(10),
              CustomText(
                text: "Estimated delivery time:",
                size: 15,
                color: Color(0xff3C2F2F),
                weight: FontWeight.w600,
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: "\$18.19",
                size: 18,
                color: Color(0xff3C2F2F),
                weight: FontWeight.w600,
              ),
              Gap(10),
              CustomText(
                text: "15 - 30 mins",
                size: 15,
                color: Color(0xff3C2F2F),
                weight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

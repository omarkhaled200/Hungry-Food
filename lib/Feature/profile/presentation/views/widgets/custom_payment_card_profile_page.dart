import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CuustomPaymentCardinProfilePage extends StatelessWidget {
  const CuustomPaymentCardinProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Color(0xffF3F4F6),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              // 🔥 الدائرة
              Image.asset(AssetsDate.visa, height: 40),

              Gap(12),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Debit card',
                    size: 15,
                    color: Colors.black,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    text: '3566 **** **** 0505',
                    size: 14,
                    color: Color(0xff808080),
                    weight: FontWeight.w500,
                  ),
                ],
              ),
              Spacer(),
              CustomText(
                text: "default",
                size: 13,
                color: Colors.black,
                weight: FontWeight.w500,
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}

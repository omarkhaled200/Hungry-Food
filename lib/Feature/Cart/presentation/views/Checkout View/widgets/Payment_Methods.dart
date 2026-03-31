import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Payment methods",
          size: 20,
          color: Color(0xff3C2F2F),
          weight: FontWeight.w600,
        ),
        Gap(10),

        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            setState(() {
              selectedValue = 1;
            });
          },
          child: Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xff3C2F2F),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                // 🔥 الدائرة
                Image.asset(AssetsDate.dollar, height: 70),

                SizedBox(width: 12),

                // 🔥 النص
                Expanded(
                  child: CustomText(
                    text: 'Cash on Delivery',
                    size: 18,
                    color: Colors.white,
                    weight: FontWeight.w500,
                  ),
                ),

                // 🔥 الراديو
                Radio<int>(
                  value: 1,
                  groupValue: selectedValue,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Gap(10),
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            setState(() {
              selectedValue = 2;
            });
          },
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
                // 🔥 الراديو
                Radio<int>(
                  value: 2,
                  groupValue: selectedValue,
                  activeColor: Color(0xff3C2F2F),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

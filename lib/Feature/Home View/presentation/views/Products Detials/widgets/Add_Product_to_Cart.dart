import 'package:flutter/material.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.buttontext, this.onpressed});
  final String buttontext;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Total",
                size: 18,
                color: Colors.black,
                weight: FontWeight.w500,
              ),

              CustomText(
                text: "\$18.5",
                size: 24,
                color: Colors.black,
                weight: FontWeight.w700,
              ),
            ],
          ),
          CustomButton(
            backcolor: AppColors.kprimarycolor,
            width: 250,
            heaight: 90,
            text: buttontext,
            textcolor: Colors.white,
            onPressed: onpressed,
          ),
        ],
      ),
    );
  }
}

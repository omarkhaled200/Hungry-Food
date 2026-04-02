import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/profile/presentation/views/widgets/log_out_btn.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';

class CustomProfileViewBtn extends StatelessWidget {
  const CustomProfileViewBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        // borderRadius:
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                width: 60,
                heaight: 100,
                text: 'Edit profile',
                textcolor: Colors.white,
                backcolor: AppColors.kprimarycolor,
                onPressed: () {},
              ),
            ),
            Gap(10),
            LogOutBtn(),
          ],
        ),
      ),
    );
  }
}

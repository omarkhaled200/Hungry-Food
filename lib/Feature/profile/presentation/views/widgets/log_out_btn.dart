import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';

class LogOutBtn extends StatelessWidget {
  const LogOutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: AppColors.kprimarycolor),
          backgroundColor: Colors.white,
          fixedSize: Size(60 * 0.7, 100 * 0.5),
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "log out",
              style: TextStyle(
                color: AppColors.kprimarycolor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(5),
            Icon(Icons.logout_rounded, color: AppColors.kprimarycolor),
          ],
        ),
      ),
    );
  }
}

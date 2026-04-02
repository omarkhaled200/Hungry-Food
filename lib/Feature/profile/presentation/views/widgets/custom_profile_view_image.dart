import 'package:flutter/material.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';

class CustomProfileViewImage extends StatelessWidget {
  const CustomProfileViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 125,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.kprimarycolor, width: 6),
          image: DecorationImage(
            image: AssetImage(AssetsDate.profile),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

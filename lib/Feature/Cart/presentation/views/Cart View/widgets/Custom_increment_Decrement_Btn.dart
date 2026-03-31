import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomIncrementandDecremetnBtn extends StatefulWidget {
  const CustomIncrementandDecremetnBtn({super.key});

  @override
  State<CustomIncrementandDecremetnBtn> createState() =>
      _CustomIncrementandDecremetnBtnState();
}

class _CustomIncrementandDecremetnBtnState
    extends State<CustomIncrementandDecremetnBtn> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(4), // أصغر padding
                minimumSize: Size.zero, // مهم
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: AppColors.kprimarycolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
              ),
              onPressed: () {
                number > 1
                    ? setState(() {
                        number = number - 1;
                      })
                    : null;
              },
              child: Icon(CupertinoIcons.minus, color: Colors.white, size: 20),
            ),
            Gap(5),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 4,
                ),
                child: CustomText(
                  text: "$number",
                  size: 18,
                  color: AppColors.kprimarycolor,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            Gap(5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(4), // أصغر padding
                minimumSize: Size.zero, // مهم
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: AppColors.kprimarycolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
              ),
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: Icon(CupertinoIcons.add, color: Colors.white, size: 20),
            ),
          ],
        ),
        Gap(12),
        CustomButton(
          width: 200,
          heaight: 90,
          text: 'Remove',
          textcolor: Colors.white,
          backcolor: AppColors.kprimarycolor,
          onPressed: () {},
        ),
      ],
    );
  }
}

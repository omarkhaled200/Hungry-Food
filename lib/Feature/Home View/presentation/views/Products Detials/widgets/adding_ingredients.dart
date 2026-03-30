import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class Addingingredientsitem extends StatefulWidget {
  const Addingingredientsitem({super.key});

  @override
  State<Addingingredientsitem> createState() =>
      _AddingToppingsandsideoptionitemState();
}

class _AddingToppingsandsideoptionitemState
    extends State<Addingingredientsitem> {
  bool checkeditem = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 125,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kprimarycolor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(78),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Tomato",
                      size: 15,
                      color: Colors.white,
                      weight: FontWeight.w500,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: checkeditem ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            checkeditem = !checkeditem;
                          });
                        },
                        icon: Icon(
                          checkeditem
                              ? CupertinoIcons.check_mark
                              : CupertinoIcons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,

          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(horizontal: 22),
            width: 125,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(AssetsDate.tomato),
          ),
        ),
      ],
    );
  }
}

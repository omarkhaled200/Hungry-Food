import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';

import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ProdcutInfo extends StatefulWidget {
  const ProdcutInfo({super.key, required this.product});
  final Data product;
  @override
  State<ProdcutInfo> createState() => _ProdcutInfoState();
}

class _ProdcutInfoState extends State<ProdcutInfo> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(widget.product.image!, height: 150),
        Gap(10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: widget.product.description!,
                size: 15,
                color: Colors.black,
                weight: FontWeight.w400,
              ),
              Gap(10),
              CustomText(
                text: "Spicy",
                size: 15,
                color: Colors.black,
                weight: FontWeight.w600,
              ),
              Slider(
                min: 0,
                max: 100,
                value: _currentvalue,
                activeColor: AppColors.kprimarycolor,
                onChanged: (value) {
                  setState(() {
                    _currentvalue = value;
                  });
                },
              ),
              Row(
                children: [
                  Spacer(flex: 1),

                  CustomText(
                    text: '🥶',
                    size: 13,
                    color: Colors.white,
                    weight: FontWeight.w500,
                  ),
                  Spacer(flex: 5),
                  CustomText(
                    text: '🌶️',
                    size: 13,
                    color: Colors.white,
                    weight: FontWeight.w500,
                  ),

                  Spacer(flex: 1),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

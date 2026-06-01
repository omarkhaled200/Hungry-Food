import 'package:flutter/material.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    required this.buttontext,
    this.onpressed,
    this.product,
  });
  final String buttontext;
  final Data? product;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    print('the price is ${product!.price}');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Total",
                size: 18,
                color: Colors.black,
                weight: FontWeight.w500,
              ),

              CustomText(
                text: "\$ ${product!.price}",
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

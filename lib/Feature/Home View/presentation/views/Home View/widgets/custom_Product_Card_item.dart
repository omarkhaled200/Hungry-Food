import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CustomProductCarditem extends StatelessWidget {
  const CustomProductCarditem({super.key, required this.product});
  final Data product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kproductdetials, extra: product);
      },
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Image.asset(AssetsDate.shadow, width: 120),
                      ),
                      Image.network(product.image!, width: 120),
                    ],
                  ),
                ),
              ),
              Gap(5),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: CustomText(
                  text: product.name!,
                  size: 15,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
              ),
              CustomText(
                text: "${product.price!} \$",
                size: 13,
                color: Colors.black,
                weight: FontWeight.w400,
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      CustomText(
                        text: product.rating!,
                        size: 15,
                        color: Colors.black,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: AppColors.kprimarycolor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

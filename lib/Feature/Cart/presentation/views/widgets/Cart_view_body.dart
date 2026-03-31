import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CartViewbody extends StatelessWidget {
  const CartViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(
            color: AppColors.kprimarycolor,
            fontSize: 28,
            fontFamily: "LuckiestGuy",
          ),
        ),
      ),
      body: Column(
        children: [
          Gap(25),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    elevation: 5,
                    child: Row(
                      children: [
                        Gap(8),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AssetsDate.product, width: 110),
                              Gap(5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Hamburger",
                                    size: 16,
                                    color: Colors.black,
                                    weight: FontWeight.w600,
                                  ),
                                  CustomText(
                                    text: "Veggie Burger",
                                    size: 14,
                                    color: Colors.black,
                                    weight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Spacer(),
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(4), // أصغر padding
                                    minimumSize: Size.zero, // مهم
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: AppColors.kprimarycolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                    size: 18,
                                  ),
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
                                      text: "1",
                                      size: 15,
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
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: AppColors.kprimarycolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
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
                        ),
                        Gap(16),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          ButtonAction(buttontext: "Checkout", onpressed: () {}),
        ],
      ),
    );
  }
}

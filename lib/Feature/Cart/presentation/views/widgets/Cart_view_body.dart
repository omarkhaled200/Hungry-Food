import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/widgets/Custom_Cart_view_Card_item.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/widgets/Custom_increment_Decrement_Btn.dart';
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
                  child: CustomCartViewCartItem(),
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

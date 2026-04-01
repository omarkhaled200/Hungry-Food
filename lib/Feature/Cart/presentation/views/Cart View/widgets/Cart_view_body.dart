import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Cart%20View/widgets/Custom_Cart_view_Card_item.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';

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
          Gap(120),
        ],
      ),
      bottomSheet: Container(
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
        child: ButtonAction(
          buttontext: "Check out",
          onpressed: () => GoRouter.of(context).push(AppRouter.kcheckoutview),
        ),
      ),
    );
  }
}

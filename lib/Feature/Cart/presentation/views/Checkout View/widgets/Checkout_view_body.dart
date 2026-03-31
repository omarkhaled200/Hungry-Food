import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/utils/App_Router.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Checkout%20View/widgets/Custom_Check_box.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Checkout%20View/widgets/Order_Summary.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Checkout%20View/widgets/Payment_Methods.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Checkout%20View/widgets/Total_Price_Summary.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class CheckoutViewbody extends StatefulWidget {
  const CheckoutViewbody({super.key});

  @override
  State<CheckoutViewbody> createState() => _CheckoutViewbodyState();
}

class _CheckoutViewbodyState extends State<CheckoutViewbody> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Order summary",
                size: 18,
                color: Colors.black,
                weight: FontWeight.w600,
              ),
              Gap(10),
              OrderSummary(),
              Gap(5),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Color(0xffF0F0F0),
                thickness: 1,
              ),
              Gap(5),
              TotalPriceSummary(),
              Gap(50),
              PaymentMethods(),
              Gap(10),
              CustomCheckbox(
                onSelected: (value) {
                  ischecked = value;
                },
              ),
              Gap(50),
              ButtonAction(
                buttontext: "Pay Now",
                onpressed: () {
                  ischecked
                      ? GoRouter.of(context).push(AppRouter.ksuccessview)
                      : null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

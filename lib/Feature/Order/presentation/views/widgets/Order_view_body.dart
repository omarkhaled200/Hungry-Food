import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Cart%20View/widgets/Custom_Cart_view_Card_item.dart';
import 'package:hungry_food/Feature/Order/presentation/views/widgets/Custom_Order_view_card.dart';
import 'package:hungry_food/Feature/shared/CustomButton.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class OrderViewbody extends StatelessWidget {
  const OrderViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomOrderViewCard(),
            );
          },
        ),
      ),
    );
  }
}

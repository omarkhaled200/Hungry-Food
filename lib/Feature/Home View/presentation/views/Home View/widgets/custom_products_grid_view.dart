import 'package:flutter/material.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/custom_Product_Card_item.dart';

class CustomProductsGridView extends StatelessWidget {
  const CustomProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.88,
          mainAxisSpacing: 5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomProductCarditem();
        },
      ),
    );
  }
}

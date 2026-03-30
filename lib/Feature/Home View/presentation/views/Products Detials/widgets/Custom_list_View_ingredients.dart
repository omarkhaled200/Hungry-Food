import 'package:flutter/material.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/adding_ingredients.dart';

class CustomListViewproductinfo extends StatelessWidget {
  const CustomListViewproductinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Addingingredientsitem();
        },
      ),
    );
  }
}

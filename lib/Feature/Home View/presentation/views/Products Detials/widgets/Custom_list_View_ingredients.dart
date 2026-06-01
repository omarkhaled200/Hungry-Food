import 'package:flutter/material.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/side_option_model/side_option_model.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/topping_model/topping_model.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/adding_ingredients.dart';

class CustomListViewproductinfo extends StatelessWidget {
  const CustomListViewproductinfo({
    super.key,
    required this.type,
    this.topping,
    this.sideoption,
  });
  final String type;
  final List<ToppingModel>? topping;
  final List<SideOptionModel>? sideoption;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: type == 'topping' ? topping!.length : sideoption!.length,
        itemBuilder: (context, index) {
          return type == 'topping'
              ? Addingingredientsitem(product: topping![index])
              : Addingingredientsitem(product: sideoption![index]);
        },
      ),
    );
  }
}

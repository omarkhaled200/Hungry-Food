import 'package:flutter/material.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Product_Detials_View_body.dart';

class ProductDetialView extends StatelessWidget {
  const ProductDetialView({super.key, required this.product});
  final Data product;
  @override
  Widget build(BuildContext context) {
    return ProductDetialsViewbody(product: product);
  }
}

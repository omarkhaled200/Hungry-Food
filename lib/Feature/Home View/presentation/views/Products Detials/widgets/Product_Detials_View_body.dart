import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/Assets.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Prodcut_Info.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ProductDetialsViewbody extends StatefulWidget {
  const ProductDetialsViewbody({super.key});

  @override
  State<ProductDetialsViewbody> createState() => _ProductDetialsViewbodyState();
}

class _ProductDetialsViewbodyState extends State<ProductDetialsViewbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(children: [Gap(30), ProdcutInfo()]),
        ),
      ),
    );
  }
}

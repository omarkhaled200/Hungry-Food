import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Custom_list_View_ingredients.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              ProdcutInfo(),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  text: 'Toppings',
                  size: 18,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
              ),
              CustomListViewproductinfo(),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  text: 'Side options',
                  size: 18,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
              ),
              CustomListViewproductinfo(),
              Gap(20),

              const Gap(120),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          // borderRadius:
        ),
        child: ButtonAction(buttontext: "Add to Cart", onpressed: () {}),
      ),
    );
  }
}

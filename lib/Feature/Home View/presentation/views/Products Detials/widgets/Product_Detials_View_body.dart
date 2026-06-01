import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/View_Model/Get%20Side-option/get_side_option_cubit.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/View_Model/Get%20Topping%20Cubit/get_topping_cubit.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Add_Product_to_Cart.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Custom_list_View_ingredients.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/widgets/Prodcut_Info.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class ProductDetialsViewbody extends StatefulWidget {
  const ProductDetialsViewbody({super.key, required this.product});
  final Data product;
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
              ProdcutInfo(product: widget.product),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  text:
                      'Customize Your Burger to Your Tastes. Ultimate Experience 🍔🍴',
                  size: 15,
                  color: Colors.grey,
                  weight: FontWeight.w600,
                ),
              ),
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
              BlocProvider(
                create: (context) =>
                    GetToppingCubit(HomeRepoImpl(ApiClass(Dio())))
                      ..gettopping(),
                child: BlocBuilder<GetToppingCubit, GetToppingState>(
                  builder: (context, state) {
                    if (state is GetToppingSuccess) {
                      return CustomListViewproductinfo(
                        type: 'topping',
                        topping: state.product,
                      );
                    }

                    if (state is GetToppingFailure) {
                      return const SizedBox.shrink();
                    }

                    return const Center(
                      child: SpinKitFadingCircle(color: Colors.black),
                    );
                  },
                ),
              ),
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
              BlocProvider(
                create: (context) =>
                    GetSideOptionCubit(HomeRepoImpl(ApiClass(Dio())))
                      ..getSideOption(),
                child: BlocBuilder<GetSideOptionCubit, GetSideOptionState>(
                  builder: (context, state) {
                    if (state is GetSideOptionSuccess) {
                      return CustomListViewproductinfo(
                        type: 'sideoption',
                        sideoption: state.product,
                      );
                    }

                    if (state is GetSideOptionFailure) {
                      return const SizedBox.shrink();
                    }

                    return const Center(
                      child: SpinKitFadingCircle(color: Colors.black),
                    );
                  },
                ),
              ),

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
        child: ButtonAction(
          buttontext: "Add to Cart",
          onpressed: () {},
          product: widget.product,
        ),
      ),
    );
  }
}

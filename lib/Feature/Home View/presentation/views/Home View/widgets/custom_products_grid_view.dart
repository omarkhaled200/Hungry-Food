import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/View_Model/Get_All_Products/get_all_products_cubit.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/custom_Product_Card_item.dart';

class CustomProductsGridView extends StatelessWidget {
  const CustomProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
        builder: (context, state) {
          if (state is GetAllProductsSuccess) {
            return GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.88,
                mainAxisSpacing: 5,
              ),
              itemCount: state.product.length,
              itemBuilder: (context, index) {
                return CustomProductCarditem(product: state.product[index]);
              },
            );
          } else if (state is GetAllProductsFailure) {
            return SizedBox.shrink();
          } else {
            return Center(child: SpinKitFadingCircle(color: Colors.black));
          }
        },
      ),
    );
  }
}

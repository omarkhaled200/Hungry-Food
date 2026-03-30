import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/Assets.dart';

import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/Home_Header.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/Home_Search.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/category_Name_list.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/custom_products_grid_view.dart';
import 'package:hungry_food/Feature/shared/Custom_text.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              HomeHeader(),
              HomeSearch(),
              CategoryNameList(),
              SliverToBoxAdapter(child: Gap(20)),
              CustomProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

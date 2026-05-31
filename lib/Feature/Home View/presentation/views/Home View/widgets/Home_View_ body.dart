import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/View_Model/Get_All_Category/get_all_category_cubit.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/View_Model/Get_All_Products/get_all_products_cubit.dart';

import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/Home_Header.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/Home_Search.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/category_Name_list.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/widgets/custom_products_grid_view.dart';

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
              BlocProvider(
                create: (context) =>
                    GetAllCategoryCubit(HomeRepoImpl(ApiClass(Dio())))
                      ..getallcategory(),
                child: CategoryNameList(),
              ),
              SliverToBoxAdapter(child: Gap(20)),
              BlocProvider(
                create: (context) =>
                    GetAllProductsCubit(HomeRepoImpl(ApiClass(Dio())))
                      ..getallproducts(),
                child: CustomProductsGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

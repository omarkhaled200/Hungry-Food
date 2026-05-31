import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Core/utils/CustomScaffoldMessenger.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/View_Model/Get_All_Category/get_all_category_cubit.dart';

class CategoryNameList extends StatefulWidget {
  const CategoryNameList({super.key});

  @override
  State<CategoryNameList> createState() => _CategoryNameListState();
}

class _CategoryNameListState extends State<CategoryNameList> {
  List<String> category = [
    "All",
    "Combos",
    "Sliders",
    "Classic",
    "Beef Burger",
    "Cheeseburger",
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllCategoryCubit, GetAllCategoryState>(
      builder: (context, state) {
        if (state is GetAllCategorySuccess) {
          var cate = state.cate;
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cate.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: selectedindex == index
                              ? AppColors.kprimarycolor
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            cate[index].name ?? "",
                            style: TextStyle(
                              color: selectedindex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is GetAllCategoryFailure) {
          CustomScaffoldMessenger(
            context,
            "Faild to load data",
            Icons.dangerous_rounded,
            Colors.red,
          );
          return SliverToBoxAdapter(child: SizedBox.shrink());
        } else {
          return SliverToBoxAdapter(
            child: Center(child: SpinKitFadingCircle(color: Colors.black)),
          );
        }
      },
    );
  }
}

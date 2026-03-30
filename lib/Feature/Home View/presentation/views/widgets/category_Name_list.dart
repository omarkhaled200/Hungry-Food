import 'package:flutter/material.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';

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
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: selectedindex == index
                        ? AppColors.kprimarycolor
                        : Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      category[index],
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
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Feature/shared/Custom_text_field.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 30,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: CustomTextfield(
              hinttext: "Search",
              hintcolor: Colors.black,
              textcolor: Colors.black,
              obscure: false,
              prefixicon: Icon(CupertinoIcons.search),
            ),
          ),
          Gap(20),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hungry_food/Feature/Home%20View/presentation/views/widgets/Home_Header.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/widgets/Home_Search.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/widgets/category_Name_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [HomeHeader(), HomeSearch(), CategoryNameList()],
        ),
      ),
    );
  }
}

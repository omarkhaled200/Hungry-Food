import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hungry_food/Feature/Home%20View/presentation/views/widgets/Home_Header.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/widgets/Home_Search.dart';

import 'package:hungry_food/Feature/shared/Custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [HomeHeader(), HomeSearch()],
        ),
      ),
    );
  }
}

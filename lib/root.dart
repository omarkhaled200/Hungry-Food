import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Cart_view.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home_view.dart';
import 'package:hungry_food/Feature/Order/presentation/views/Order_view.dart';
import 'package:hungry_food/Feature/profile/presentation/views/Profile_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [HomeView(), CartView(), OrderView(), ProfileView()];

    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.white,
        color: AppColors.kprimarycolor,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: [
          Icon(CupertinoIcons.house_fill, size: 25, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 25, color: Colors.white),
          Icon(Icons.local_restaurant_outlined, size: 25, color: Colors.white),
          Icon(CupertinoIcons.person_fill, size: 25, color: Colors.white),
        ],
      ),
    );
  }
}

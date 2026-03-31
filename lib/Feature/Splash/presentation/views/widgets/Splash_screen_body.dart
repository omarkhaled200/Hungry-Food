import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/utils/App_Router.dart';
import 'package:hungry_food/Core/utils/Assets.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    navigateToHomeViews();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          Gap(height * 0.25),
          Text(
            'Hungry?',
            style: TextStyle(
              fontFamily: "LuckiestGuy",
              fontSize: 60,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),

          Image.asset(AssetsDate.logo, height: 350),
        ],
      ),
    );
  }

  void navigateToHomeViews() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kroot);
    });
  }
}

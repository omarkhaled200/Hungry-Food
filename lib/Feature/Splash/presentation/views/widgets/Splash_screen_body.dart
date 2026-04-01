import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Core/utils/app_router.dart';
import 'package:hungry_food/Core/utils/Assets.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> textSlide;
  late Animation<double> textFade;
  late Animation<double> logoScale;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Slide من تحت لفوق
    textSlide = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );

    // Fade للنص
    textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    // تكبير اللوجو
    logoScale = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.elasticOut),
    );

    animationController.forward();

    navigateToHomeViews();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        children: [
          Gap(height * 0.25),

          // 🟢 النص بالأنيميشن
          FadeTransition(
            opacity: textFade,
            child: SlideTransition(
              position: textSlide,
              child: const Text(
                'Hungry?',
                style: TextStyle(
                  fontFamily: "LuckiestGuy",
                  fontSize: 60,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const Spacer(),

          // 🟢 اللوجو بالأنيميشن
          ScaleTransition(
            scale: logoScale,
            child: Image.asset(AssetsDate.logo, height: 350),
          ),
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

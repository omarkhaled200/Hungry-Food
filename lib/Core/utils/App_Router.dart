import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/Login_Views/login_view.dart';
import 'package:hungry_food/Feature/Auth/presentation/views/SignUp_views/Sign_up_view.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Checkout%20View/Checkout_View.dart';
import 'package:hungry_food/Feature/Cart/presentation/views/Success%20View/Success_View.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Home%20View/Home_view.dart';
import 'package:hungry_food/Feature/Home%20View/presentation/views/Products%20Detials/Product_Detial_view.dart';
import 'package:hungry_food/Feature/Splash/presentation/views/Splash_Screen.dart';
import 'package:hungry_food/root.dart';

abstract class AppRouter {
  static final khomeview = '/khomeview';
  static final kloginview = '/kloginview';
  static final ksignupview = '/ksignupview';
  static final kroot = '/kroot';
  static final kproductdetials = '/kproductdetials';
  static final kcheckoutview = '/kcheckoutview';
  static final ksuccessview = '/ksuccessview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: SplashScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),

      GoRoute(
        path: khomeview,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: HomeView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kproductdetials,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: ProductDetialView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kcheckoutview,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: CheckoutView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: ksuccessview,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: SuccessView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kloginview,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: LoginView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: kroot,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: Root(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
      GoRoute(
        path: ksignupview,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: SignUpView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
    ],
  );
}

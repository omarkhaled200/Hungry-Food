import 'package:flutter/material.dart';
import 'package:hungry_food/Core/utils/App_Router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light(),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

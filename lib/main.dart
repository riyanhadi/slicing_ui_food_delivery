import 'package:flutter/material.dart';
import 'package:slicing_iu_fooddelivery/core.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = getFoodDeliveryTheme();

    return MaterialApp(
      title: 'Food Delivery',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const MainNavigationView(),
    );
  }
}

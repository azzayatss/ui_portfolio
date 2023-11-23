import 'package:clothes_app/features/food/common/view/widgets/food_navigation_bar.dart';
import 'package:flutter/material.dart';

class FoodMainShellPage extends StatelessWidget {
  const FoodMainShellPage({super.key, required this.child});
  static const route = '/food-main-shell-screen';
  static const routeName = 'food-main-shell-screen';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: child,
      bottomNavigationBar: const FoodNavigationBar(),
    );
  }
}

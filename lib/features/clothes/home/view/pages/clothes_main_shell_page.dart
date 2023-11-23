import 'package:clothes_app/features/clothes/common/view/widgets/clothes_app_bar.dart';
import 'package:clothes_app/features/clothes/common/view/widgets/clothes_navigation_bar.dart';
import 'package:flutter/material.dart';

class ClothesMainShellScreen extends StatelessWidget {
  const ClothesMainShellScreen({super.key, required this.child});
  static const route = '/clothes-main-shell-screen';
  static const routeName = 'clothes-main-shell-screen';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ClothesAppBar(),
      body: child,
      bottomNavigationBar: const ClothesNavigationBar(),
    );
  }
}


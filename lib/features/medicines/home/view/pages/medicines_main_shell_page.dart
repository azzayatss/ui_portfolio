import 'package:clothes_app/features/medicines/common/view/widgets/medicines_navigation_bar.dart';
import 'package:flutter/material.dart';

class MedicinesMainShellPage extends StatelessWidget {
  const MedicinesMainShellPage({super.key, required this.child});
  static const route = '/medicine-main-shell-screen';
  static const routeName = 'medicine-main-shell-screen';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: child,
      bottomNavigationBar: const MedicinesNavigationBar(),
    );
  }
}

import 'package:clothes_app/features/travel/common/view/widgets/travel_navigation_bar.dart';
import 'package:flutter/material.dart';

class TravelMainShellPage extends StatelessWidget {
  const TravelMainShellPage({super.key, required this.child});
  static const route = '/travel-main-shell-screen';
  static const routeName = 'travel-main-shell-screen';

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: child,
      bottomNavigationBar: const TravelNavigationBar(),
    );
  }
}

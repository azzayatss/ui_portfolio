import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomListAnimation extends StatelessWidget {
  const CustomListAnimation({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      duration: const Duration(milliseconds: 600),
      position: 0,
      child: SlideAnimation(
        verticalOffset: 50,
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}

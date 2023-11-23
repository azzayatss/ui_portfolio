import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomColumnAnimation extends StatelessWidget {
  const CustomColumnAnimation({
    super.key,
    required this.children,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
  });

  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 600),
          childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(child: widget),
          ),
          children: children,
        ),
      ),
    );
  }
}

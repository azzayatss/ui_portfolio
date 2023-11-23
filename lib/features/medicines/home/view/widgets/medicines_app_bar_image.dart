import 'package:flutter/material.dart';

class MedicinesAppBarImage extends StatelessWidget {
  const MedicinesAppBarImage({
    super.key,
    required this.screenHeight,
    required this.scrollOffset,
  });

  final double screenHeight;
  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: screenHeight / 3,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/img21.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0)
            .copyWith(bottom: 40)
            .copyWith(top: MediaQuery.of(context).viewPadding.top),
        child: AnimatedOpacity(
          opacity: scrollOffset >= 50 ? 0 : 1,
          duration: const Duration(milliseconds: 200),
          child: const Text(
            'Enter the name of the medicine or the name of the active substance',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

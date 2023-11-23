import 'package:flutter/material.dart';

class FoodHomeMealCardStarButton extends StatelessWidget {
  const FoodHomeMealCardStarButton({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.95),
      child: Container(
        height: screenHeight * 0.0379,
        width: screenWidth * 0.0820,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.star_border),
      ),
    );
  }
}

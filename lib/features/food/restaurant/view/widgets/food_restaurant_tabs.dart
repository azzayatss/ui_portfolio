import 'package:flutter/material.dart';

class FoodRestaurantTabs extends StatelessWidget {
  const FoodRestaurantTabs({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.0592,
      color: Colors.white.withOpacity(0.8),
      child: Row(
        children: [
          Column(
            children: [
              const Spacer(),
              const Text(
                'MENU',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0C837D),
                ),
              ),
              const Spacer(),
              Container(
                // height: 5,
                height: screenHeight * 0.005,
                width: screenWidth * 0.3076,
                color: const Color(0xFF0C837D),
              )
            ],
          ),
          const Spacer(),
          Text(
            'DIRECTIONS',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const Spacer(),
          Text(
            'REVIEWS',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

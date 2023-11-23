import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';
import 'package:flutter/material.dart';

class FoodHomeMealCardTimeChip extends StatelessWidget {
  const FoodHomeMealCardTimeChip({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.item,
  });

  final double screenHeight;
  final double screenWidth;
  final FoodMealModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.95),
      child: Container(
        height: screenHeight * 0.0379,
        width: screenWidth * 0.2384,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.schedule),
            Text(
              item.mealCookingTime.toUpperCase(),
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

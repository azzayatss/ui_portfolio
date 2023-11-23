import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_meal_card_star_button.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_meal_card_time_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MealCard extends StatelessWidget {
  const MealCard({
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
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Stack(
        children: [
          Card(
            child: Container(
              height: screenHeight * 0.2602,
              width: screenWidth * 0.6410,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: AnimationLimiter(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.imgAsset),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CustomColumnAnimation(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                item.mealName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${item.restaurantName}  -  ${item.restaurantRate}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              Text(
                                '${item.mealPrice} DHS',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0C837D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.0118,
            right: screenWidth * 0.0256,
            child: FoodHomeMealCardStarButton(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ),
          Positioned(
            top: screenHeight * 0.0118,
            left: screenWidth * 0.0256,
            child: FoodHomeMealCardTimeChip(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                item: item),
          ),
        ],
      ),
    );
  }
}

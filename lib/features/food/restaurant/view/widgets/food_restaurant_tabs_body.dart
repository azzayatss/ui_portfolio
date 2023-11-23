import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodRestaurantTabsBody extends StatelessWidget {
  const FoodRestaurantTabsBody({
    super.key,
    required this.screenHeight,
    required this.restaurantList,
    required this.screenWidth,
  });

  final double screenHeight;
  final List<FoodMealModel> restaurantList;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.3554,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: 3,
        itemBuilder: (context, index) {
          final meal = restaurantList[index + 1];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    height: screenHeight * 0.0568,
                    width: screenWidth * 0.1230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(meal.imgAsset),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meal.mealName,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.9),
                        ),
                      ),
                      Text(
                        '${meal.mealWeight}g',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        '${meal.mealPrice} DHS',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0C837D),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Icon(Icons.schedule),
                      const Gap(10),
                      Text(
                        meal.mealCookingTime,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

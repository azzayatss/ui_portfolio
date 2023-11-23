import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_tabs.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_tabs_body.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_tabs_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodRestaurantTabsSection extends StatelessWidget {
  const FoodRestaurantTabsSection({
    super.key,
    required this.restaurantList,
  });

  final List<FoodMealModel> restaurantList;

  @override
  Widget build(BuildContext context) {
    //
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Container(
      color: Colors.grey.shade300,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          const Gap(10),
          FoodRestaurantTabs(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          const Gap(15),
          const FoodRestaurantTabsSubtitle(),
          const Gap(15),
          FoodRestaurantTabsBody(
            screenHeight: screenHeight,
            restaurantList: restaurantList,
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}

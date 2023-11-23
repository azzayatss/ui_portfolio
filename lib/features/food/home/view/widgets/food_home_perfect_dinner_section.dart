import 'package:clothes_app/features/food/home/data/food_dummy_data.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_meal_card.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_section_title.dart';
import 'package:clothes_app/features/food/restaurant/view/pages/food_restaurant_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodHomePerfectDinnerSection extends StatelessWidget {
  const FoodHomePerfectDinnerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final dinnerList = FoodDummyData().perfectDinerList;

    return Padding(
        padding: const EdgeInsets.all(10),
        child: CustomColumnAnimation(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const FoodHomeSectionTitle(title: 'Perfect dinner:'),
            SizedBox(
              height: screenHeight * 0.2690,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dinnerList.length,
                itemBuilder: (context, index) {
                  final item = dinnerList[index];
                  return GestureDetector(
                    onTap: () => context.goNamed(FoodRestaurantPage.routeName,
                        queryParameters: {'id': item.id}),
                    child: MealCard(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      item: item,
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

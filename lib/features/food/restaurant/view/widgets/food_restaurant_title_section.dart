import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodRestaurantTitleSection extends StatelessWidget {
  const FoodRestaurantTitleSection({
    super.key,
    required this.restaurant,
  });

  final FoodMealModel restaurant;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 15,
        ),
        child: CustomColumnAnimation(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: const Color(0xFFEFEFEF),
                child: SizedBox(
                  height: screenHeight * 0.0379,
                  width: screenWidth * 0.4256,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.schedule),
                      Text(
                        ('Opens soon - 6PM').toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(10),
              Text(
                restaurant.mealName,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              const Gap(5),
              Text(
                '${restaurant.restaurantName} ${restaurant.restaurantDescription}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  RatingBarIndicator(
                    itemSize: 20,
                    rating: restaurant.restaurantRate,
                    itemCount: 5,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFF2CA53),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    '${restaurant.restaurantRate} (201 reviews)',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    'Average check:',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const Gap(5),
                  const Text(
                    '1300-1700 DHS',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF0C837D),
                    ),
                  ),
                ],
              ),
            ]));
  }
}

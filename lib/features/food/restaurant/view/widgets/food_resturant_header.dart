import 'package:clothes_app/features/food/home/data/food_dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodRestaurantHeader extends StatelessWidget {
  const FoodRestaurantHeader({
    super.key,
    required this.restaurantId,
  });

  final String restaurantId;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final restaurant = FoodDummyData()
        .perfectDinerList
        .firstWhere((element) => element.id == restaurantId);

    return Container(
      height: screenHeight * 0.0663,
      width: screenWidth,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            const Gap(30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.restaurantDescription.toUpperCase(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Colors.white.withOpacity(0.7),
                    letterSpacing: 2,
                  ),
                ),
                const Gap(5),
                Text(
                  restaurant.restaurantName,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset('assets/icons/icon_59.png'),
          ],
        ),
      ),
    );
  }
}

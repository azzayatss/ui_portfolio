import 'package:clothes_app/features/food/home/view/widgets/food_home_background_bottom.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_background_top.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_header.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_list_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_perfect_dinner_section.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_popular_places_section.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_quick_menu_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FoodHomePage extends StatelessWidget {
  const FoodHomePage({super.key});

  static const route = '/food-home';
  static const routeName = 'food-home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //positioned top background
        const FoodHomeBackgroundTop(),
        //positioned bottom background
        const FoodHomeBackgroundBottom(),
        SafeArea(
          child: AnimationLimiter(
            child: ListView(
              children: const [
                // menu & search bar
                CustomListAnimation(
                  child: FoodHomeHeader(),
                ),
                CustomListAnimation(
                  child: FoodHomeQuickMenuSection(),
                ),
                CustomListAnimation(
                  child: FoodHomePerfectDinnerSection(),
                ),
                CustomListAnimation(
                  child: FoodHomePopularPlacesSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

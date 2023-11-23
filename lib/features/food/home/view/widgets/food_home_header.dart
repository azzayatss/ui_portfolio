import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_header_menu.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_header_search.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodHomeHeader extends StatelessWidget {
  const FoodHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: screenWidth,
        child: const CustomColumnAnimation(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(15),
            FoodHomeHeaderMenu(),
            Gap(15),
            FoodHomeHeaderSearch(),
          ],
        ),
      ),
    );
  }
}

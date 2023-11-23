import 'package:clothes_app/features/food/home/data/food_quick_menu_items.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_quick_menu_card.dart';
import 'package:flutter/material.dart';

import 'food_home_section_title.dart';

class FoodHomeQuickMenuSection extends StatelessWidget {
  const FoodHomeQuickMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    const quickMenuItems = FoodQuickMenuItems.values;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomColumnAnimation(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FoodHomeSectionTitle(title: 'Quick menu:'),
          SizedBox(
            height: screenHeight * 0.2132,
            width: screenWidth,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: quickMenuItems.length,
              itemBuilder: (context, index) {
                final item = quickMenuItems[index];
                return FoodHomeQuickMenuCard(
                  item: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

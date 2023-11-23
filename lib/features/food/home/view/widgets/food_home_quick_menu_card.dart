import 'package:clothes_app/features/food/home/data/food_quick_menu_items.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodHomeQuickMenuCard extends StatelessWidget {
  const FoodHomeQuickMenuCard({
    super.key,
    required this.item,
  });

  final FoodQuickMenuItems item;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Card(
      color: item.color,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        height: screenHeight * 0.2132,
        width: screenWidth * 0.3076,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: screenHeight * 0.0296,
              left: screenWidth * 0.1025,
              child: Container(
                height: screenHeight * 0.0687,
                width: screenWidth * 0.1487,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            CustomColumnAnimation(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.emoji,
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                const Gap(10),
                Text(
                  item.count,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

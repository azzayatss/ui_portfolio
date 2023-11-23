import 'package:clothes_app/features/food/home/data/food_dummy_data.dart';
import 'package:flutter/material.dart';

class FoodRestaurantImageSliderWidget extends StatelessWidget {
  const FoodRestaurantImageSliderWidget({
    super.key,
    required this.currentIndex,
    required this.itemCount,
    required this.scrollOffset,
  });

  final ValueNotifier<int> currentIndex;
  final int itemCount;
  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: screenHeight / 2,
      width: screenWidth,
      child: PageView.builder(
        pageSnapping: true,
        itemCount: itemCount,
        onPageChanged: (newIndex) {
          currentIndex.value = newIndex;
        },
        itemBuilder: (context, index) {
          final photo = FoodDummyData().restaurantPhotos[index];
          return AnimatedOpacity(
            opacity: scrollOffset >= 100 ? 0.3 : 1,
            duration: const Duration(milliseconds: 400),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4),
                      BlendMode.colorBurn,
                    ),
                    image: AssetImage(photo),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}

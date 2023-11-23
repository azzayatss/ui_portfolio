import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_indicators.dart';
import 'package:clothes_app/features/food/home/data/food_dummy_data.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_image_slider_widget.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_resturant_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FoodRestaurantImageSliderSection extends HookWidget {
  const FoodRestaurantImageSliderSection({
    super.key,
    required this.restaurantId,
    required this.scrollOffset,
  });

  final String restaurantId;
  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final currentIndex = useState(0);
    final restaurantPhotosCount = FoodDummyData().restaurantPhotos.length;
  
    return Stack(
      children: [
        FoodRestaurantImageSliderWidget(
          currentIndex: currentIndex,
          itemCount: restaurantPhotosCount,
          scrollOffset: scrollOffset,
        ),
        Positioned(
          bottom: screenHeight * 0.0592,
          left: screenWidth * 0.448,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: scrollOffset >= 100 ? 0 : 1,
            child: Center(
              child: ClothesSliderIndicators(
                  itemsCount: restaurantPhotosCount,
                  currentIndex: currentIndex.value,
                  activeColor: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          child: FoodRestaurantHeader(
            restaurantId: restaurantId,
          ),
        ),
      ],
    );
  }
}

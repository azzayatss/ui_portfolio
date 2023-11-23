import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_indicators.dart';
import 'package:clothes_app/features/food/home/view/widgets/custom_column_animation.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_popular_places_card.dart';
import 'package:clothes_app/features/food/home/view/widgets/food_home_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FoodHomePopularPlacesSection extends HookWidget {
  const FoodHomePopularPlacesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: 0);
    final currentPageIndex = useState(0);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomColumnAnimation(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FoodHomeSectionTitle(title: 'Popular places:'),
          FoodHomePopularPlacesCard(
            controller: controller,
            currentPageIndex: currentPageIndex,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClothesSliderIndicators(
              itemsCount: 5,
              currentIndex: currentPageIndex.value,
              activeColor: const Color(0xFF0C837D),
            ),
          ),
        ],
      ),
    );
  }
}

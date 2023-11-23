import 'package:clothes_app/features/food/home/data/food_dummy_data.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_image_slider_section.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_tabs_section.dart';
import 'package:clothes_app/features/food/restaurant/view/widgets/food_restaurant_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FoodRestaurantPage extends HookWidget {
  const FoodRestaurantPage({super.key, required this.restaurantrId});

  static const route = 'food-restaurant';
  static const routeName = 'food-restaurant';

  final String restaurantrId;

  @override
  Widget build(BuildContext context) {
    //
    final scrollOffset = useState(0.0);
    final scrollController = useScrollController();
    scrollController.addListener(() {
      scrollOffset.value = scrollController.offset;
    });

    final restaurantList = FoodDummyData().perfectDinerList;
    final restaurant =
        restaurantList.firstWhere((element) => element.id == restaurantrId);

    return Stack(children: [
      CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: 360,
            collapsedHeight: MediaQuery.sizeOf(context).height * 0.0663,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              title: FoodRestaurantImageSliderSection(
                restaurantId: restaurantrId,
                scrollOffset: scrollOffset.value,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                FoodRestaurantTitleSection(
                  restaurant: restaurant,
                ),
                FoodRestaurantTabsSection(
                  restaurantList: restaurantList,
                ),
              ],
            ),
          ),
        ],
      ),
      Positioned(
          bottom: 30,
          right: 15,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF0C837D),
            onPressed: () {},
            child: Image.asset('assets/icons/icon_60.png'),
          ))
    ]);
  }
}

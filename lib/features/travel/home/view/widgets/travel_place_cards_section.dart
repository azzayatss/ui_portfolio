import 'package:clothes_app/features/travel/place/data/travel_place_dummy_data.dart';
import 'package:clothes_app/features/travel/place/view/pages/travel_place_page.dart';
import 'package:clothes_app/features/travel/place/view/widgets/travel_place_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelPlaceCardsSection extends StatelessWidget {
  const TravelPlaceCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final data = TravelPlaceDummyData().places;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        width: screenWidth,
        height: screenHeight * 0.35,
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = data[index];
            return GestureDetector(
              onTap: () => context.goNamed(TravelPlacePage.routeName),
              child: TravelPlaceCard(item: item),
            );
          },
        ),
      ),
    );
  }
}

import 'package:clothes_app/features/travel/place/view/widgets/travel_place_header.dart';
import 'package:clothes_app/features/travel/place/view/widgets/travel_place_page_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelPlacePage extends StatelessWidget {
  const TravelPlacePage({super.key});

  static const route = 'travel-place-page';
  static const routeName = 'travel-place-page';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.blue.shade100.withOpacity(0.2)),
        const SafeArea(
          child: Column(
            children: [
              TravelPlaceHeader(),
              Gap(15),
              TravelPlacePageBody(),
            ],
          ),
        ),
      ],
    );
  }
}

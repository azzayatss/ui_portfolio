import 'package:clothes_app/features/travel/home/view/widgets/travel_home_apartments_section.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_home_places_section.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_home_search_bar.dart';
import 'package:flutter/material.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  static const route = '/travel-home';
  static const routeName = 'travel-home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.blue.shade100.withOpacity(0.2)),
        SafeArea(
          child: ListView(
            children: const [
              TravelHomeSearchBar(),
              TravelHomePlacesSection(),
              TravelHomeApartmentsSection(),
            ],
          ),
        ),
      ],
    );
  }
}

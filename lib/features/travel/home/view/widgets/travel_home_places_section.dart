import 'package:clothes_app/features/travel/home/view/widgets/travel_home_section_button.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_home_section_title.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_place_cards_section.dart';
import 'package:flutter/material.dart';

class TravelHomePlacesSection extends StatelessWidget {
  const TravelHomePlacesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TravelHomeSectionTitle(
          title: 'Where are you going?',
        ),
        TravelPlaceCardsSection(),
        TravelHomeSectionButton(
          text: 'Show all places (195)',
        ),
      ],
    );
  }
}

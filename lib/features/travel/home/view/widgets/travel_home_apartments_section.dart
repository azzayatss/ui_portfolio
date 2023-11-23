import 'package:clothes_app/features/travel/home/view/widgets/travel_home_apartments_cards_sections.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_home_section_button.dart';
import 'package:clothes_app/features/travel/home/view/widgets/travel_home_section_title.dart';
import 'package:flutter/material.dart';

class TravelHomeApartmentsSection extends StatelessWidget {
  const TravelHomeApartmentsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 390,
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TravelHomeSectionTitle(title: 'Featured apartments'),
          TravelHomeApartmentsCardsSection(),
          TravelHomeSectionButton(text: 'Show all apartments (2,000+)')
        ],
      ),
    );
  }
}

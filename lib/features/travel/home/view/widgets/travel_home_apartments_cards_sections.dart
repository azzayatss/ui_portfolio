import 'package:clothes_app/features/travel/apartment/data/travel_featured_apartments_dummy_data.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card.dart';
import 'package:flutter/material.dart';

class TravelHomeApartmentsCardsSection extends StatelessWidget {
  const TravelHomeApartmentsCardsSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final data = TravelFeaturedApartmentsDummyData().featuredApartments;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0).copyWith(bottom: 10),
      child: SizedBox(
        width: screenWidth,
        height: screenHeight * 0.35,
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = data[index];
            return TravelApartmentCard(item: item);
          },
        ),
      ),
    );
  }
}

import 'package:clothes_app/features/travel/apartment/data/travel_featured_apartments_dummy_data.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_wide_card.dart';
import 'package:flutter/material.dart';

class TravelPlacePageBody extends StatelessWidget {
  const TravelPlacePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;

    final data = TravelFeaturedApartmentsDummyData().londonApartments;

    return SizedBox(
      height: screenHeight * 0.65,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return TravelApartmentWideCard(item: item);
        },
      ),
    );
  }
}

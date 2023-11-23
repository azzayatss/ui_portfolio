import 'package:clothes_app/features/travel/apartment/data/travel_apartment_model.dart';
import 'package:flutter/material.dart';

class TravelApartmentCardSaveIcon extends StatelessWidget {
  const TravelApartmentCardSaveIcon({
    super.key,
    required this.item,
  });

  final TravelFeaturedApartmentModel item;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Image.asset(item.isFavourite
          ? 'assets/icons/icon_65.png'
          : 'assets/icons/icon_64.png'),
    );
  }
}

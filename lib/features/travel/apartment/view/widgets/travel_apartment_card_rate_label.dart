import 'package:clothes_app/features/travel/apartment/data/travel_apartment_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentCardRateLabel extends StatelessWidget {
  const TravelApartmentCardRateLabel({
    super.key,
    required this.item,
  });

  final TravelFeaturedApartmentModel item;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        alignment: Alignment.center,
        height: 24,
        width: 33,
        decoration: BoxDecoration(
          color: const Color(0xFF4385FF),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
          ).copyWith(
            bottomRight: const Radius.circular(10),
          ),
        ),
        child: Text(
          item.rate.toString(),
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

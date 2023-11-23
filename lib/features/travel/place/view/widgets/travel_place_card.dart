import 'package:clothes_app/features/travel/place/data/travel_place_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TravelPlaceCard extends StatelessWidget {
  const TravelPlaceCard({
    super.key,
    required this.item,
  });

  final TravelPlaceModel item;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight * 0.2369,
            width: screenWidth * 0.3589,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage(item.asset), fit: BoxFit.cover),
            ),
          ),
          const Gap(10),
          Text(
            item.name,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          const Gap(5),
          Text(
            '${formatNumber(item.apartmentsCount)} apartments',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF42425B).withOpacity(0.6),
            ),
          ),
          const Gap(10),
          Text(
            'From UAH ${formatNumber(item.priceFrom)}',
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF42425B).withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }

  String formatNumber(int number) {
    final NumberFormat formatter = NumberFormat('#,##,000');
    final result = formatter.format(number);
    return result;
  }
}

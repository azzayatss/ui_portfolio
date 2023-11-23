import 'package:clothes_app/features/travel/apartment/data/travel_apartment_model.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_rate_label.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_save_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TravelApartmentCard extends StatelessWidget {
  const TravelApartmentCard({super.key, required this.item});

  final TravelFeaturedApartmentModel item;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: screenHeight * 0.3199,
      width: screenWidth * 0.5128,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(item.asset),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ('${item.roomsLeft} rooms left').toUpperCase(),
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const Gap(5),
                Text(
                  item.name,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const Gap(5),
                Text(
                  item.location,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const Gap(10),
                Text(
                  ('UAH ${formatNumber(item.price)} per night'),
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          TravelApartmentCardRateLabel(item: item),
          TravelApartmentCardSaveIcon(item: item)
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

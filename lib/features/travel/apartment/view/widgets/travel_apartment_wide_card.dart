import 'package:clothes_app/features/travel/apartment/data/travel_apartment_model.dart';
import 'package:clothes_app/features/travel/apartment/view/pages/travel_apartment_page.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_breakfast_label.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_rate_label.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_save_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentWideCard extends StatelessWidget {
  const TravelApartmentWideCard({
    super.key,
    required this.item,
  });

  final TravelFeaturedApartmentModel item;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return GestureDetector(
      onTap: () => context.pushNamed(TravelApartmentPage.routeName),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.2132,
                  width: screenWidth * 0.8846,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.asset),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                TravelApartmentCardRateLabel(item: item),
                TravelApartmentCardSaveIcon(item: item),
                const TravelApartmentCardBreakfastLabel(
                  bottom: 15,
                  left: 15,
                ),
              ],
            ),
            const Gap(15),
            Text(
              '${item.roomsLeft} rooms left',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: const Color(0xFFDE0D2E),
              ),
            ),
            const Gap(5),
            Text(
              item.name,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.9)),
            ),
            const Gap(5),
            Row(
              children: [
                Text(
                  '${item.location} •',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color(0xFF42425B).withOpacity(0.6),
                  ),
                ),
                Text(
                  ' Show on map',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xFF4385FF),
                  ),
                ),
              ],
            ),
            const Gap(15),
            Text(
              'UAH ${item.price} per night',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xFF42425B).withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

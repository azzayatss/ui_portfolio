import 'package:clothes_app/features/travel/apartment/data/travel_apartment_model.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_page_image_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentPageMainInfoSection extends StatelessWidget {
  const TravelApartmentPageMainInfoSection({
    super.key,
    required this.item,
  });

  final TravelFeaturedApartmentModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  fontSize: 26,
                  color: Colors.black.withOpacity(0.9)),
            ),
            const Gap(5),
            Row(
              children: [
                Text(
                  '${item.location} •',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xFF42425B).withOpacity(0.6),
                  ),
                ),
                Text(
                  ' Show on map',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color(0xFF4385FF),
                  ),
                ),
              ],
            ),
            const Gap(25),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFCEE8FF))),
                  child: Text(
                    item.rate.toString(),
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF4385FF),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Gap(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Very Goood',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF42425B).withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Based on',
                          style: GoogleFonts.montserrat(
                            color: const Color(0xFF42425B).withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          '1,762 reviews',
                          style: GoogleFonts.montserrat(
                            color: const Color(0xFF4385FF),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Gap(25),
            const Row(
              children: [
                TravelRateItem(rate: 9.0, title: 'Accuracy'),
                TravelRateItem(rate: 9.7, title: 'Cleanliness'),
                TravelRateItem(rate: 9.2, title: 'Value'),
              ],
            ),
            const Gap(15),
            const Row(
              children: [
                TravelRateItem(rate: 9.2, title: 'Location'),
                TravelRateItem(rate: 9.3, title: 'Check-in'),
                TravelRateItem(rate: 9.4, title: 'Communication'),
              ],
            ),
            const Gap(25),
            Container(
              alignment: Alignment.center,
              height: 72,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF4385FF),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reserve for UAH ${item.price} per night',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Free cancellation',
                    style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

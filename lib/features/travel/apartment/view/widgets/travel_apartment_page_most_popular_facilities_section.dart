import 'package:clothes_app/features/travel/apartment/data/travel_apartment_most_popular_facilities_enum.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentPageMostPopularFacilitiesSection extends StatelessWidget {
  const TravelApartmentPageMostPopularFacilitiesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 444,
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most popular facilities',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.8)),
            ),
            SizedBox(
              height: 384,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: TravelApartmentMostPopularFacilities.values.length,
                itemBuilder: (context, index) {
                  final item =
                      TravelApartmentMostPopularFacilities.values[index];
                  return SizedBox(
                    height: 48,
                    child: Row(
                      children: [
                        Image.asset(item.asset),
                        const Gap(15),
                        Text(
                          item.title,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: const Color(0xFF42425B).withOpacity(0.8),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

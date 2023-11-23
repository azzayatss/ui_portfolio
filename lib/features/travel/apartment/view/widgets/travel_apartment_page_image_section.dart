import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentPageImageSection extends StatelessWidget {
  const TravelApartmentPageImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/img50.png'), fit: BoxFit.cover),
      ),
    );
  }
}

class TravelRateItem extends StatelessWidget {
  const TravelRateItem({
    super.key,
    required this.rate,
    required this.title,
  });

  final double rate;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            rate.toString(),
            style: GoogleFonts.montserrat(
              color: const Color(0xFF42425B).withOpacity(0.9),
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
              color: const Color(0xFF42425B).withOpacity(0.6),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

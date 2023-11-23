import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelHomeSectionTitle extends StatelessWidget {
  const TravelHomeSectionTitle({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF42425B).withOpacity(0.6),
        ),
      ),
    );
  }
}

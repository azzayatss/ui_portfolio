import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelApartmentCardBreakfastLabel extends StatelessWidget {
  const TravelApartmentCardBreakfastLabel({
    super.key,
    required this.bottom,
    required this.left,
  });

  final double bottom;
  final double left;

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Positioned(
      bottom: bottom,
      left: left,
      child: Container(
        alignment: Alignment.center,
        height: screenHeight * 0.0284,
        width: screenWidth * 0.2256,
        decoration: BoxDecoration(
          color: const Color(0xFFFEBA02),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          ('Breakfast').toUpperCase(),
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

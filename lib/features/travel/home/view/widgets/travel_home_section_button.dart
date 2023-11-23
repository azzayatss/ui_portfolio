import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelHomeSectionButton extends StatelessWidget {
  const TravelHomeSectionButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          height: 49,
          width: 328,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFFCEE8FF),
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4385FF).withOpacity(0.9),
            ),
          ),
        ),
      ),
    );
  }
}

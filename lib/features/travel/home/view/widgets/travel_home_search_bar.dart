import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelHomeSearchBar extends StatelessWidget {
  const TravelHomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        color: Colors.white,
        height: MediaQuery.sizeOf(context).height * 0.0663,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            const Gap(20),
            Image.asset('assets/icons/icon_63.png'),
            const Gap(20),
            Text(
              'Country, place or hotel',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xFF42425B).withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

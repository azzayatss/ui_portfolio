import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodHomeSectionTitle extends StatelessWidget {
  const FoodHomeSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                ('See all').toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const Gap(10),
              Image.asset(
                'assets/icons/icon_55.png',
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

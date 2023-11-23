import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodHomeHeaderMenu extends StatelessWidget {
  const FoodHomeHeaderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/icons/icon_52.png'),
        const Gap(30),
        Container(
          height: screenHeight * 0.0473,
          width: screenWidth * 0.1025,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/img25.png',
              ),
            ),
          ),
        ),
        const Gap(15),
        Text(
          'Hello, Ahmad',
          style: GoogleFonts.playfairDisplay(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF000000).withOpacity(0.8),
          ),
        ),
        const Gap(15),
        const Spacer(),
        Image.asset('assets/icons/icon_53.png'),
      ],
    );
  }
}

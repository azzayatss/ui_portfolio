import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelPlaceHeader extends StatelessWidget {
  const TravelPlaceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
                const Gap(30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'London',
                      style: GoogleFonts.montserrat(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '1240 propertiess',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF42425B).withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert_outlined,
                )
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/icon_66.png'),
                const SizedBox(
                  height: 16,
                  child: VerticalDivider(
                    width: 1,
                    color: Color(0xFFCEE8FF),
                  ),
                ),
                Image.asset('assets/icons/icon_67.png'),
                const SizedBox(
                  height: 16,
                  child: VerticalDivider(
                    width: 1,
                    color: Color(0xFFCEE8FF),
                  ),
                ),
                Image.asset('assets/icons/icon_68.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

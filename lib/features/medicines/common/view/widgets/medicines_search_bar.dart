import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MedicinesSearchBar extends StatelessWidget {
  const MedicinesSearchBar({
    super.key,
    required this.isPharmacy,
  });

  final bool isPharmacy;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      height: screenHeight * 0.0594,
      width: screenWidth * 0.8718,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 4),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Image.asset('assets/icons/icon_20.png'),
            const Gap(20),
            Image.asset('assets/icons/icon_26.png'),
            const Gap(20),
            Text(
              isPharmacy ? 'Search for pharmacies' : 'Search for medicines',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const Spacer(),
            Image.asset('assets/icons/icon_24.png'),
            if (!isPharmacy) ...[
              const Gap(20),
              Image.asset('assets/icons/icon_25.png'),
            ]
          ],
        ),
      ),
    );
  }
}

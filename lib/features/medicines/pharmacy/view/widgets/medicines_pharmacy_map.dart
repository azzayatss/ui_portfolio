import 'package:flutter/material.dart';

class MedicinesPharmacyMap extends StatelessWidget {
  const MedicinesPharmacyMap({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.35,
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img22.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

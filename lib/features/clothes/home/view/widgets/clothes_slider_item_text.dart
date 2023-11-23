import 'package:flutter/material.dart';

class ClothesSliderItemText extends StatelessWidget {
  const ClothesSliderItemText({
    super.key,
    required this.saleDuration,
    required this.discountInPercents,
    required this.discountedGoods,
  });

  final String saleDuration;
  final String discountInPercents;
  final String discountedGoods;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40,
      top: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            saleDuration,
            style: TextStyle(
                fontSize: 12,
                color: const Color(0xFFFFFFFF).withOpacity(0.8),
                fontWeight: FontWeight.bold),
          ),
          Text(
            '$discountInPercents% OFF',
            style: const TextStyle(
                fontSize: 26,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w900),
          ),
          Text(
            discountedGoods,
            style: const TextStyle(
                fontSize: 26,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}

import 'package:clothes_app/features/clothes/home/data/clothes_gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesNewInTextBlock extends StatelessWidget {
  const ClothesNewInTextBlock({
    super.key,
    required this.gender,
    required this.productsCount,
  });

  final ClothesGender gender;
  final String productsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$productsCount PRODUCTS',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Color(0xFF8A8A8A),
          ),
        ),
        const Gap(4),
        Row(
          children: [
            Text(
              gender == ClothesGender.man ? 'MEN\'S' : 'WOMEN\'S',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: gender == ClothesGender.man
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF161616),
              ),
            ),
            const Gap(6),
            Text(
              'NEW IN',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xFF161616).withOpacity(0.6),
              ),
            ),
          ],
        ),
        const Gap(10),
        Text(
          ('see more').toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
            color: Color(0xFFC7AF67),
          ),
        ),
      ],
    );
  }
}

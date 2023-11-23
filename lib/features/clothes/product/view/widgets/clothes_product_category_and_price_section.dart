import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesProductCategoryAndPriceSection extends StatelessWidget {
  const ClothesProductCategoryAndPriceSection({
    super.key,
    required this.productCategory,
    required this.productPrice,
  });

  final String productCategory;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Category:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF161616),
                ),
              ),
              const Gap(5),
              Text(
                productCategory.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color(0xFF161616),
                ),
              ),
            ],
          ),
          const Gap(35),
          Text(
            '$productPrice SAR',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: const Color(0xFF161616).withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}

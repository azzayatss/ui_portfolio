import 'package:clothes_app/features/clothes/home/view/widgets/clothes_best_categories_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesBestCategoryItem extends StatelessWidget {
  const ClothesBestCategoryItem({
    super.key,
    required this.item,
  });

  final ClothesBestCategoryModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(item.asset),
        ),
        color: const Color(0xFFC4C4C4),
      ),
      child: Column(
        children: [
          const Gap(40),
          SizedBox(
            width: 90,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                item.categoryName.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: Color(0xFF161616),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 90,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '${item.productsCount} Products',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xFF161616).withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

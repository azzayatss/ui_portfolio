import 'package:clothes_app/features/clothes/home/data/clothes_new_in_dummy_data.dart';
import 'package:clothes_app/features/clothes/product/view/pages/clothes_product_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ClothesGridCard extends StatelessWidget {
  const ClothesGridCard({
    super.key,
    required this.itemId,
  });

  final String itemId;

  @override
  Widget build(BuildContext context) {
    final item = ClothesNewInDummyData()
        .combined
        .firstWhere((element) => element.itemId == itemId);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () => context.goNamed(
                ClothesProductPage.routeName,
                queryParameters: {
                  'id': itemId,
                },
              ),
              child: Hero(
                tag: item.imgAsset,
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.imgAsset),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Image.asset(
                'assets/icons/icon_11.png',
              ),
            ),
            Positioned(
              bottom: -15,
              left: 10,
              child: Container(
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.15),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Image.asset('assets/icons/icon_12.png'),
              ),
            ),
          ],
        ),
        const Gap(20),
        Text(
          item.itemName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF000000),
          ),
        ),
        const Gap(5),
        Text(
          item.itemSize,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: const Color(0xFF000000).withOpacity(0.6),
          ),
        ),
        const Gap(5),
        Text(
          '${item.itemPrice} SAR',
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 12,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}

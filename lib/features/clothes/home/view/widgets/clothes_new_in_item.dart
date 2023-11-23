import 'package:clothes_app/features/clothes/home/data/clothes_product_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/clothes_gender_enum.dart';

class ClothesNewInItem extends StatelessWidget {
  const ClothesNewInItem({
    super.key,
    required this.gender,
    required this.itemsList,
    required this.index,
  });

  final ClothesGender gender;
  final List<ClothesProductModel> itemsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(itemsList[index].imgAsset),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              itemsList[index].itemName,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: gender == ClothesGender.woman
                    ? const Color(0xFF161616)
                    : const Color(0xFFFFFFFF),
              ),
            ),
            const Gap(5),
            Text(
              itemsList[index].itemSize,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: gender == ClothesGender.woman
                    ? const Color(0xFF161616).withOpacity(0.6)
                    : const Color(0xFFFFFFFF).withOpacity(0.6),
              ),
            ),
            const Gap(5),
            Text(
              '${itemsList[index].itemPrice} SAR',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12,
                color: gender == ClothesGender.woman
                    ? const Color(0xFF161616)
                    : const Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

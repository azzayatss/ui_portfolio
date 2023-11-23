import 'package:clothes_app/features/medicines/medicines_product/data/medicines_products_dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MedicinesProductCard extends StatelessWidget {
  const MedicinesProductCard({
    super.key,
    required this.itemId,
    required this.showInstructionButton,
    required this.isFavorite,
  });

  final String itemId;
  final bool showInstructionButton;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final item = MedicinesProductsDummyData()
        .productsList
        .firstWhere((element) => element.id == itemId);
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(item.asset),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${item.name} > \$${item.price}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              ),
              Text(
                item.description,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF000000).withOpacity(0.5),
                ),
              ),
              Text(
                'x${item.count} • ${item.milligrams} mg',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              )
            ],
          ),
          if (!showInstructionButton) ...[
            Gap(MediaQuery.sizeOf(context).width * 0.1)
          ],
          Column(
            crossAxisAlignment: showInstructionButton
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.center,
            mainAxisAlignment: showInstructionButton
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Image.asset(
                isFavorite
                    ? 'assets/icons/icon_35.png'
                    : 'assets/icons/icon_34.png',
              ),
              if (showInstructionButton) ...[
                const Row(children: [
                  Text(
                    'INSTRUCTION',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3AA1FF),
                    ),
                  ),
                  Gap(5),
                  Icon(
                    Icons.link,
                    color: Color(0xFF3AA1FF),
                  ),
                ])
              ]
            ],
          )
        ],
      ),
    );
  }
}

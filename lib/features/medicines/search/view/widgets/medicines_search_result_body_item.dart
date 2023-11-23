import 'package:clothes_app/features/medicines/medicines_product/data/medicines_product_model.dart';
import 'package:clothes_app/features/medicines/medicines_product/view/pages/medicines_product_page.dart';
import 'package:clothes_app/features/medicines/medicines_product/view/widgets/medicines_product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MedicinesSearchResultBodyItem extends StatelessWidget {
  const MedicinesSearchResultBodyItem({
    super.key,
    required this.item,
    required this.pharmaciesCount,
    required this.showInstructionButton,
    required this.isFavorite,
  });

  final MedicinesProductModel item;
  final String pharmaciesCount;
  final bool showInstructionButton;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$pharmaciesCount pharmacies',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF000000).withOpacity(0.5),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => context.pushNamed(MedicinesProductPage.routeName,
              queryParameters: {'id': item.id}),
          child: MedicinesProductCard(
            itemId: item.id,
            showInstructionButton: showInstructionButton,
            isFavorite: isFavorite,
          ),
        ),
      ],
    );
  }
}

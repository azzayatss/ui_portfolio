import 'package:flutter/material.dart';

class ClothesBestCategoriesTitle extends StatelessWidget {
  const ClothesBestCategoriesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 133,
          child: Text(
            ('best categories').toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Color(0xFF161616),
            ),
          ),
        ),
        Text(
          ('see all').toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
            color: Color(0xFFC7AF67),
          ),
        )
      ],
    );
  }
}

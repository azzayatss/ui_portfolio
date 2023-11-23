import 'package:flutter/material.dart';

class ClothesBestCategoriesSegmentedButton extends StatelessWidget {
  const ClothesBestCategoriesSegmentedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(85),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            ('for women').toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: Color(0xFFFFFFFF),
            ),
          ),
          VerticalDivider(
            color: const Color(0xFFFFFFFF).withOpacity(0.2),
          ),
          Text(
            ('for men').toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 12,
              color: const Color(0xFFFFFFFF).withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}

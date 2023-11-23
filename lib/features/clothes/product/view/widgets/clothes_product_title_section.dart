import 'package:flutter/material.dart';

class ClothesProductTitleSection extends StatelessWidget {
  const ClothesProductTitleSection({super.key, required this.productName});

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        productName.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Color(0xFF161616),
        ),
      ),
    );
  }
}

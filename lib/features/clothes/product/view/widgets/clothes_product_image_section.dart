import 'package:flutter/material.dart';

class ClothesProductImageSection extends StatelessWidget {
  const ClothesProductImageSection({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: img,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
          ),
        ),
      ),
    );
  }
}

import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_item_button.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_item_text.dart';
import 'package:flutter/material.dart';

class ClothesSliderItem extends StatelessWidget {
  const ClothesSliderItem({
    super.key,
    required this.bgImage,
    required this.isActive,
    required this.saleDuration,
    required this.discountInPercents,
    required this.discountedGoods,
  });

  final AssetImage bgImage;
  final bool isActive;
  final String saleDuration;
  final String discountInPercents;
  final String discountedGoods;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: bgImage,
                ),
              ),
              width: 343,
              height: isActive ? 300 : 275,
            ),
            const ClothesSliderItemButton(),
            ClothesSliderItemText(
              saleDuration: saleDuration,
              discountInPercents: discountInPercents,
              discountedGoods: discountedGoods,
            ),
          ],
        ),
      ),
    );
  }
}

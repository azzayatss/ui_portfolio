import 'package:flutter/material.dart';

class ClothesSliderIndicators extends StatelessWidget {
  const ClothesSliderIndicators({
    super.key,
    required this.itemsCount,
    required this.currentIndex,
    required this.activeColor,
  });

  final int itemsCount;
  final int currentIndex;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators(
        itemsCount: itemsCount,
        currentIndex: currentIndex,
      ),
    );
  }

  List<Widget> indicators(
      {required int itemsCount, required int currentIndex}) {
    return List<Widget>.generate(itemsCount, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: currentIndex == index ? 10 : 5,
          height: currentIndex == index ? 10 : 5,
          decoration: BoxDecoration(
            color:
                currentIndex == index ? activeColor : const Color(0xFFC8CCD8),
            shape: BoxShape.circle,
          ),
        ),
      );
    });
  }
}

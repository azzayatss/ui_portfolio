import 'package:flutter/material.dart';

class ClothesSliderItemButton extends StatelessWidget {
  const ClothesSliderItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -30,
      right: 15,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.15),
              blurRadius: 5,
            ),
          ],
          color: const Color(0xFFFFFFFF),
          shape: BoxShape.circle,
        ),
        child: Image.asset('assets/icons/icon_4.png'),
      ),
    );
  }
}

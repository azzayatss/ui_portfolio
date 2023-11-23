import 'package:flutter/material.dart';

class FoodHomeBackgroundBottom extends StatelessWidget {
  const FoodHomeBackgroundBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Positioned(
        top: screenHeight / 1.5,
        right: 0,
        child: Container(
          height: screenHeight / 3,
          width: screenWidth,
          color: const Color(0xFFF5F5F5),
        ));
  }
}

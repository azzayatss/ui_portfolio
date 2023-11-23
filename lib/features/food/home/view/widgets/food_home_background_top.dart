import 'package:flutter/material.dart';

class FoodHomeBackgroundTop extends StatelessWidget {
  const FoodHomeBackgroundTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Positioned(
        top: screenHeight * -0.1267,
        left: screenWidth * -0.1794,
        child: Container(
          height: screenHeight * 0.5924,
          width: screenWidth * 1.28,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img23.png'),
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}

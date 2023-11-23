import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:typethis/typethis.dart';

class FoodHomeHeaderSearch extends StatelessWidget {
  const FoodHomeHeaderSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Container(
            height: screenHeight * 0.05687,
            width: screenWidth * 0.73,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Gap(15),
                Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(0.5),
                ),
                const Gap(15),
                TypeThis(
                  showBlinkingCursor: false,
                  string: 'Search food in Dubai ...',
                  speed: 100,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            height: screenHeight * 0.05687,
            width: screenWidth * 0.1435,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/icons/icon_54.png'),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodRestaurantTabsSubtitle extends StatelessWidget {
  const FoodRestaurantTabsSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Text(
            'Top 3 main dishes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          const Spacer(),
          Text(
            'SEE ALL',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const Gap(5),
          Image.asset('assets/icons/icon_55.png'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesProductSizeAndColorSection extends StatelessWidget {
  const ClothesProductSizeAndColorSection(
      {super.key, required this.productSize});

  final String productSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/icon_15.png'),
                Text(
                  'SIZE:',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: const Color(0xFF161616).withOpacity(0.6),
                  ),
                ),
                const Gap(5),
                Text(
                  productSize,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Color(0xFF161616),
                  ),
                ),
                Image.asset('assets/icons/icon_16.png'),
              ],
            ),
          ),
          // const Gap(10),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/img17.png'),
                Image.asset('assets/images/img18.png'),
                Image.asset('assets/images/img19.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesBuyFAB extends StatelessWidget {
  const ClothesBuyFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 110,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const Gap(5),
            Image.asset('assets/icons/icon_17.png'),
            const Gap(5),
            Text(
              ('buy').toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: Color(0xFFC7AF67),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

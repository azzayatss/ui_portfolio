import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesProductDescriptionSection extends StatelessWidget {
  const ClothesProductDescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                ('Descriptions').toUpperCase(),
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  color: const Color(0xFF161616).withOpacity(0.6),
                ),
              ),
              const Gap(10),
              const Text(
                'Our mesh midi dress is perfect for work or play, covered with a bright paisley pattern with a flocked spot for a stylish finish.\nOur mesh midi dress is perfect for work or play, covered with a bright paisley pattern with a flocked spot for a stylish finish.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF161616),
                ),
              ),
              const Gap(20),
              Text(
                ('details').toUpperCase(),
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  color: const Color(0xFF161616).withOpacity(0.6),
                ),
              ),
              const Gap(10),
              const Text(
                'Regular side neck to hem 50.5" / 128cm \nMachine washable \nDress 92% Polyester, 8% Elastane, Viscose, 5% Elastane\nRegular side neck to hem 50.5" / 128cm \nMachine washable \nDress 92% Polyester, 8% Elastane, Viscose, 5% Elastane',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF161616),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

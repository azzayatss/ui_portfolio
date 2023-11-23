import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MedicinesSearchResultShowAnaloguesButton extends StatelessWidget {
  const MedicinesSearchResultShowAnaloguesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.0594,
      width: MediaQuery.sizeOf(context).width * 0.8718,
      decoration: BoxDecoration(
        color: const Color(0xFF389BF7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Show Analogues',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Gap(15),
          Image.asset('assets/icons/icon_36.png'),
        ],
      ),
    );
  }
}

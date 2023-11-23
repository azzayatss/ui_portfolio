import 'package:flutter/material.dart';

class MedicinesSearchResultBodyTitle extends StatelessWidget {
  const MedicinesSearchResultBodyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'We found: ',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF7F7F7F),
          ),
        ),
        Text(
          '2 Results',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF282828),
          ),
        ),
      ],
    );
  }
}

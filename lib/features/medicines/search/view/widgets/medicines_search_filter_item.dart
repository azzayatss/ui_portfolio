import 'package:flutter/material.dart';

class MedicinesSearchFilterItem extends StatelessWidget {
  const MedicinesSearchFilterItem({
    super.key,
    required this.filterName,
    required this.filterHint,
  });

  final String filterName;
  final String filterHint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.2564,
      height: MediaQuery.sizeOf(context).height * 0.065,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (filterName).toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF000000).withOpacity(0.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                filterHint,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              const Icon(Icons.arrow_drop_down_sharp),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}

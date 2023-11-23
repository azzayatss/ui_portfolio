import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MedicinesSearchFilterBar extends StatelessWidget {
  const MedicinesSearchFilterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 6,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'RESET',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3AA1FF),
                ),
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MedicinesSearchFilterItem(
                    filterName: 'release form', filterHint: 'Pill'),
                MedicinesSearchFilterItem(
                    filterName: 'packaging', filterHint: 'All'),
                MedicinesSearchFilterItem(
                    filterName: 'dosage', filterHint: '100 mg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

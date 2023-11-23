import 'package:clothes_app/features/medicines/pharmacy/data/medicines_pharmacy_model.dart';
import 'package:clothes_app/features/medicines/pharmacy/view/pages/medicines_pharmacy_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MedicinesPharmacyCard extends StatelessWidget {
  const MedicinesPharmacyCard({
    super.key,
    required this.item,
  });

  final MedicinesPharmacyModel item;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () => context.pushNamed(MedicinesPharmacyPage.routeName,
          queryParameters: {'id': item.id}),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: screenHeight * 0.1066,
        width: screenWidth,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(item.asset),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          color: Color(0xFF282828),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        item.adress,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            item.distance,
                            style: const TextStyle(
                              color: Color(0xFF282828),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            ' • ${item.scheduleWeekdays} ',
                            style: const TextStyle(
                              color: Color(0xFF282828),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset('assets/icons/icon_39.png'),
              ],
            ),
            const Spacer(),
            const Divider(),
          ],
        ),
      ),
    );
  }
}

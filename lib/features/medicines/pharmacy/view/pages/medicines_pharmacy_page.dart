import 'package:bouncerwidget/bouncerwidget.dart';
import 'package:clothes_app/features/medicines/common/view/widgets/medicines_secondary_page_app_bar.dart';
import 'package:clothes_app/features/medicines/pharmacy/data/medicines_pharmacies_dummy_data.dart';
import 'package:clothes_app/features/medicines/pharmacy/view/widgets/medicines_pharmacy_info.dart';
import 'package:clothes_app/features/medicines/pharmacy/view/widgets/medicines_pharmacy_map.dart';
import 'package:flutter/material.dart';

class MedicinesPharmacyPage extends StatelessWidget {
  const MedicinesPharmacyPage({super.key, required this.itemId});

  static const route = 'medicines-pharmacy-page';
  static const routeName = 'medicines-pharmacy-page';

  final String itemId;

  @override
  Widget build(BuildContext context) {
    final item = MedicinesPharmaciesDummyData()
        .pharmaciesList
        .firstWhere((element) => element.id == itemId);

    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Stack(
      children: [
        Column(
          children: [
            MedicinesSecondaryPageAppBar(
              title: item.name,
              subtitle: '',
              showActions: true,
            ),
            MedicinesPharmacyMap(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            )
          ],
        ),
        Positioned(
          top: screenHeight / 2,
          left: 0,
          child: MedicinesPharmacyInfo(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            item: item,
          ),
        ),
        // Location Pin
        Positioned(
          top: screenHeight * 0.2,
          left: screenWidth * 0.2,
          child: BouncingWidget(child: Image.asset('assets/icons/icon_45.png')),
        ),
        // User Pin
        Positioned(
          top: screenHeight * 0.3,
          left: screenWidth * 0.1,
          child: Image.asset('assets/icons/icon_46.png'),
        ),
        Positioned(
          top: screenHeight * 0.1836,
          right: screenWidth * 0.0385,
          child: Image.asset('assets/icons/icon_47.png'),
        ),
        Positioned(
          top: screenHeight * 0.4680,
          right: screenWidth * 0.0512,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF3AA1FF),
            child: const Icon(
              Icons.drive_eta,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

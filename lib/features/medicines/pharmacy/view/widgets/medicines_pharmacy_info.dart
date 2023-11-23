import 'package:clothes_app/features/medicines/pharmacy/data/medicines_pharmacy_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MedicinesPharmacyInfo extends StatelessWidget {
  const MedicinesPharmacyInfo({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.item,
  });

  final double screenHeight;
  final double screenWidth;
  final MedicinesPharmacyModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: screenHeight / 2,
      width: screenWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // Changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/icons/icon_44.png'),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF282828),
                    ),
                  ),
                  Text(
                    item.distance,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Gap(20),
          const Text(
            'Adress:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF7F7F7F),
            ),
          ),
          Text(
            item.adress,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF282828),
            ),
          ),
          const Divider(),
          const Text(
            'Scedule:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF7F7F7F),
            ),
          ),
          Row(
            children: [
              const Text(
                'Mon - Fri:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              ),
              const Gap(10),
              Text(
                item.scheduleWeekdays,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Sat - Sun:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              ),
              const Gap(10),
              Text(
                item.scheduleWeekends,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF282828),
                ),
              ),
            ],
          ),
          const Divider(),
          const Text(
            'Phone:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF7F7F7F),
            ),
          ),
          Text(
            item.phone,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF282828),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ('Do you want to call?').toUpperCase(),
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3AA1FF),
              ),
            ),
          )
        ],
      ),
    );
  }
}

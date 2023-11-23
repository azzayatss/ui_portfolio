import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MedicinesSecondaryPageAppBar extends StatelessWidget {
  const MedicinesSecondaryPageAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.showActions,
  });

  final String title;
  final String subtitle;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 45),
      height: MediaQuery.sizeOf(context).height / 6,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/img21.png'), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                  if (subtitle.isNotEmpty) ...[
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ]
                ],
              ),
            ],
          ),
          if (showActions) ...[
            Row(
              children: [
                Image.asset('assets/icons/icon_37.png'),
                const Gap(20),
                Image.asset('assets/icons/icon_38.png'),
              ],
            )
          ]
        ],
      ),
    );
  }
}

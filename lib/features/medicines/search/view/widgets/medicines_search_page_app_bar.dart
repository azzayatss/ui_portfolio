import 'package:clothes_app/features/medicines/medicines_product/data/medicines_product_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MedicinesSearchPageAppBar extends StatelessWidget {
  const MedicinesSearchPageAppBar({
    super.key,
    required this.item,
  });

  final MedicinesProductModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 20).copyWith(top: 45),
      height: MediaQuery.sizeOf(context).height / 6,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/img21.png'), fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              // size: 20,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
              Text(
                item.description,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

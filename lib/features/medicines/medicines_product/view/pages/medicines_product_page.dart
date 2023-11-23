import 'package:clothes_app/features/medicines/common/view/widgets/medicines_search_bar.dart';
import 'package:clothes_app/features/medicines/common/view/widgets/medicines_secondary_page_app_bar.dart';
import 'package:clothes_app/features/medicines/medicines_product/data/medicines_products_dummy_data.dart';
import 'package:clothes_app/features/medicines/medicines_product/view/widgets/medicines_product_card.dart';
import 'package:clothes_app/features/medicines/pharmacy/data/medicines_pharmacies_dummy_data.dart';
import 'package:clothes_app/features/medicines/pharmacy/view/widgets/medicines_pharmacy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';

class MedicinesProductPage extends HookWidget {
  const MedicinesProductPage({super.key, required this.productId});

  static const route = 'medicine-product-page';
  static const routeName = 'medicine-product-page';

  final String productId;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    final tabIndex = useState(0);
    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });
    final switchValue = useState(true);
    final item = MedicinesProductsDummyData()
        .productsList
        .firstWhere((element) => element.id == productId);

    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final pharmaciesList = MedicinesPharmaciesDummyData().pharmaciesList;

    return Stack(
      children: [
        Container(
          height: screenHeight,
          color: Colors.blueGrey.withOpacity(0.1),
          child: Column(
            children: [
              MedicinesSecondaryPageAppBar(
                title: item.name,
                subtitle: item.description,
                showActions: true,
              ),
              Gap(screenHeight * 0.071),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MedicinesProductCard(
                  itemId: item.id,
                  showInstructionButton: false,
                  isFavorite: false,
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                width: screenWidth,
                height: screenHeight * 0.059,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ('Only open pharmacies').toUpperCase(),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      thumbColor: const MaterialStatePropertyAll(Colors.white),
                      activeColor: const Color(0xFF3AA1FF),
                      value: switchValue.value,
                      onChanged: (value) {
                        switchValue.value = value;
                      },
                    )
                  ],
                ),
              ),
              const Gap(30),
              Material(
                color: Colors.white,
                child: TabBar(
                  overlayColor: MaterialStatePropertyAll(
                    const Color(0xFF3AA1FF).withOpacity(0.05),
                  ),
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    color: const Color(0xFF282828).withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: const Color(0xFF282828).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                  indicatorColor: const Color(0xFF3AA1FF),
                  controller: tabController,
                  tabs: const [
                    Tab(text: 'By PRICE'),
                    Tab(text: 'By DISTANCE'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    AnimationLimiter(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: pharmaciesList.length,
                        itemBuilder: (context, index) {
                          final item = pharmaciesList[index];

                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 800),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: MedicinesPharmacyCard(item: item),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    AnimationLimiter(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: pharmaciesList.length,
                        itemBuilder: (context, index) {
                          final item = pharmaciesList[index];

                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 800),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: MedicinesPharmacyCard(item: item),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: screenHeight * 0.1540,
          left: screenWidth * 0.064,
          child: const MedicinesSearchBar(isPharmacy: true),
        ),
      ],
    );
  }
}

import 'package:clothes_app/features/medicines/common/view/widgets/medicines_search_bar.dart';
import 'package:clothes_app/features/medicines/home/view/widgets/medicines_app_bar_image.dart';
import 'package:clothes_app/features/medicines/medicines_product/data/medicines_products_dummy_data.dart';
import 'package:clothes_app/features/medicines/search/view/pages/medicines_search_results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';

class MedicinesHomePage extends HookWidget {
  const MedicinesHomePage({super.key});

  static const route = '/medicines-home';
  static const routeName = 'medicines-home';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final medicineProducts = MedicinesProductsDummyData().productsList;

    final scrollController = useScrollController();

    final scrollOffset = useState(0.0);
    scrollController.addListener(() {
      scrollOffset.value = scrollController.offset;
    });

    return Stack(
      children: [
        CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: screenHeight / 3,
              collapsedHeight: screenHeight / 8,
              surfaceTintColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                title: MedicinesAppBarImage(
                  screenHeight: screenHeight,
                  scrollOffset: scrollOffset.value,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                        child: Text(
                          ('Search history').toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 1.6,
                        child: AnimationLimiter(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: medicineProducts.length,
                            padding: const EdgeInsets.all(0),
                            itemBuilder: (context, index) {
                              final item = medicineProducts[index];
                              return AnimationConfiguration.staggeredList(
                                position: index,
                                duration: const Duration(milliseconds: 800),
                                child: SlideAnimation(
                                  verticalOffset: 50.0,
                                  child: FadeInAnimation(
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () => context.goNamed(
                                              MedicinesSearchResultsPage
                                                  .routeName,
                                              queryParameters: {'id': item.id}),
                                          child: ListTile(
                                            leading: Image.asset(item.asset),
                                            title: Row(
                                              children: [
                                                Text(item.name),
                                                Text(item.price.toString()),
                                              ],
                                            ),
                                            subtitle: Text(item.description),
                                            trailing: Image.asset(
                                                'assets/icons/icon_27.png'),
                                          ),
                                        ),
                                        const Divider(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: screenHeight * 0.3436 - scrollOffset.value,
          left: screenWidth * 0.0615,
          child: const MedicinesSearchBar(
            isPharmacy: false,
          ),
        ),
      ],
    );
  }
}

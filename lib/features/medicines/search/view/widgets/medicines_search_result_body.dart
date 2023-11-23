import 'package:clothes_app/features/medicines/medicines_product/data/medicines_product_model.dart';
import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_result_body_item.dart';
import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_result_body_title.dart';
import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_result_show_analogues_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';

class MedicinesSearchResultBody extends StatelessWidget {
  const MedicinesSearchResultBody({
    super.key,
    required this.item,
  });

  final MedicinesProductModel item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.blueGrey.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: MedicinesSearchResultBodyTitle(),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2962,
              child: AnimationLimiter(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 800),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: MedicinesSearchResultBodyItem(
                            item: item,
                            pharmaciesCount: index == 0 ? '604' : '368',
                            showInstructionButton: true,
                            isFavorite: index == 0 ? true : false,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Gap(70),
            const Align(
              alignment: Alignment.center,
              child: MedicinesSearchResultShowAnaloguesButton(),
            ),
          ],
        ),
      ),
    );
  }
}

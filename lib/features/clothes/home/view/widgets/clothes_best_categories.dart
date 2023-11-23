import 'package:clothes_app/features/clothes/home/data/clothes_best_categories_dummy_data.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_best_categories_item.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_best_categories_segmented_button.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_best_categories_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesBestCategories extends StatelessWidget {
  const ClothesBestCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          const ClothesBestCategoriesTitle(),
          const Gap(15),
          const ClothesBestCategoriesSegmentedButton(),
          const Gap(15),
          SizedBox(
            height: 560,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: ClothesBestCategoriesDummyData().categoriesList.length,
              itemBuilder: (context, index) {
                return ClothesBestCategoryItem(
                    item:
                        ClothesBestCategoriesDummyData().categoriesList[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

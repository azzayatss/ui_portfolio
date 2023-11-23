import 'package:clothes_app/features/clothes/home/data/clothes_new_in_dummy_data.dart';
import 'package:clothes_app/features/clothes/products_grid/view/clothes_grid_card.dart';
import 'package:clothes_app/features/clothes/products_grid/view/clothes_grid_page_sliver.dart';
import 'package:flutter/material.dart';

class ClothesGridPage extends StatelessWidget {
  const ClothesGridPage({super.key});

  static const route = '/products-grid';
  static const routeName = '/products-grid';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const ClothesGridPageSliver(),
        SliverPadding(
          padding: const EdgeInsets.all(10.0),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: 0.55,
            crossAxisSpacing: 8,
            children: ClothesNewInDummyData()
                .combined
                .map((e) => ClothesGridCard(
                      itemId: e.itemId,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

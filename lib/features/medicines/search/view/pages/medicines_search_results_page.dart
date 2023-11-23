import 'package:clothes_app/features/medicines/common/view/widgets/medicines_secondary_page_app_bar.dart';
import 'package:clothes_app/features/medicines/medicines_product/data/medicines_products_dummy_data.dart';
import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_filter_bar.dart';
import 'package:clothes_app/features/medicines/search/view/widgets/medicines_search_result_body.dart';
import 'package:flutter/material.dart';

class MedicinesSearchResultsPage extends StatelessWidget {
  const MedicinesSearchResultsPage({
    super.key,
    required this.itemId,
  });

  static const route = 'medicine-search-result-page';
  static const routeName = 'medicine-search-result-page';

  final String itemId;

  @override
  Widget build(BuildContext context) {
    final item = MedicinesProductsDummyData()
        .productsList
        .firstWhere((element) => element.id == itemId);

    return Column(
      children: [
        MedicinesSecondaryPageAppBar(
          title: item.name,
          subtitle: item.description,
          showActions: false,
        ),
        const MedicinesSearchFilterBar(),
        MedicinesSearchResultBody(item: item),
      ],
    );
  }
}

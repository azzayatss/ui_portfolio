import 'package:clothes_app/features/food/common/data/food_navigation_bar_items.dart';
import 'package:clothes_app/features/more/data/more_items_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class FoodNavigationBar extends HookWidget {
  const FoodNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuItem = useState(FoodNavigationItems.home);
    const Color activeColor = Color(0xFF0C837D);

    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      indicatorColor: activeColor.withOpacity(0.05),
      selectedIndex: menuItem.value.index,
      onDestinationSelected: (index) {
        if (index == FoodNavigationItems.values.length - 1) {
          showMenu(
              context: context,
              position: const RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
              items: MoreItems.values
                  .map(
                    (e) => PopupMenuItem(
                      value: e,
                      child: Text(e.label),
                      onTap: () => context.goNamed(e.routeName),
                    ),
                  )
                  .toList());
        }

        if (index < FoodNavigationItems.values.length - 1) {
          menuItem.value = FoodNavigationItems.values[index];

          final routeName = FoodNavigationItems.values[index].routeName;

          context.goNamed(routeName.isEmpty
              ? FoodNavigationItems.home.routeName
              : routeName);
        }
      },
      destinations: FoodNavigationItems.values
          .map(
            (e) => NavigationDestination(
              selectedIcon: Image.asset(
                e.iconAsset,
                color: activeColor,
              ),
              icon: Image.asset(e.iconAsset, color: Colors.black),
              label: e.label.toUpperCase(),
            ),
          )
          .toList(),
    );
  }
}

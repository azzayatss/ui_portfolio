import 'package:clothes_app/features/more/data/more_items_enum.dart';
import 'package:clothes_app/features/travel/common/data/travel_navigation_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class TravelNavigationBar extends HookWidget {
  const TravelNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuItem = useState(TravelNavigationItems.home);
    const Color activeColor = Color(0xFF4385FF);

    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      backgroundColor: Colors.white,
      indicatorColor: activeColor.withOpacity(0.2),
      selectedIndex: menuItem.value.index,
      onDestinationSelected: (index) {
        if (index == TravelNavigationItems.values.length - 1) {
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

        if (index < TravelNavigationItems.values.length - 1) {
          menuItem.value = TravelNavigationItems.values[index];

          final routeName = TravelNavigationItems.values[index].routeName;

          context.goNamed(routeName.isEmpty
              ? TravelNavigationItems.home.routeName
              : routeName);
        }
      },
      destinations: TravelNavigationItems.values
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

import 'package:clothes_app/features/medicines/common/data/medicines_navigation_bar_items.dart';
import 'package:clothes_app/features/more/data/more_items_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class MedicinesNavigationBar extends HookWidget {
  const MedicinesNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuItem = useState(MedicinesNavigationItems.home);
    const Color activeColor = Color(0xFF3AA1FF);

    return NavigationBar(
      backgroundColor: const Color(0xFFFFFFFF),
      indicatorColor: activeColor.withOpacity(0.1),
      selectedIndex: menuItem.value.index,
      onDestinationSelected: (index) {
        if (index == MedicinesNavigationItems.values.length - 1) {
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

        if (index < MedicinesNavigationItems.values.length - 1) {
          menuItem.value = MedicinesNavigationItems.values[index];

          final routeName = MedicinesNavigationItems.values[index].routeName;

          context.goNamed(routeName.isEmpty
              ? MedicinesNavigationItems.home.routeName
              : routeName);
        }
      },
      destinations: MedicinesNavigationItems.values
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

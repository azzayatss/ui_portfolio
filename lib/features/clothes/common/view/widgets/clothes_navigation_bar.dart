import 'package:clothes_app/features/clothes/common/data/clothes_navigation_bar_items_enum.dart';
import 'package:clothes_app/features/more/data/more_items_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class ClothesNavigationBar extends HookWidget {
  const ClothesNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuItem = useState(ClothesBottomMenuItems.home);
    const Color activeColor = Color(0xFFC7AF67);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      child: NavigationBar(
        backgroundColor: const Color(0xFFF1EEE9),
        indicatorColor: activeColor.withOpacity(0.1),
        selectedIndex: menuItem.value.index,
        onDestinationSelected: (index) {
          if (index == ClothesBottomMenuItems.values.length - 1) {
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

          if (index < ClothesBottomMenuItems.values.length - 1) {
            menuItem.value = ClothesBottomMenuItems.values[index];
            final routeName = ClothesBottomMenuItems.values[index].routeName;
            context.goNamed(routeName.isEmpty
                ? ClothesBottomMenuItems.home.routeName
                : routeName);
          }
        },
        destinations: ClothesBottomMenuItems.values
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
      ),
    );
  }
}

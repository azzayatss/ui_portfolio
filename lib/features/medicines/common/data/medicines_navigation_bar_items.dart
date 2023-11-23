import 'package:clothes_app/features/medicines/home/view/pages/medicines_home_page.dart';

enum MedicinesNavigationItems {
  home(
    iconAsset: 'assets/icons/icon_20.png',
    label: 'search',
    routeName: MedicinesHomePage.routeName,
  ),

  pharmacies(
    iconAsset: 'assets/icons/icon_21.png',
    label: 'pharmacies',
    routeName: MedicinesHomePage.routeName,
  ),

  favorites(
    iconAsset: 'assets/icons/icon_22.png',
    label: 'favorites',
    routeName: MedicinesHomePage.routeName,
  ),

  more(
    iconAsset: 'assets/icons/icon_9.png',
    label: 'more',
    routeName: '',
  );

  final String iconAsset;
  final String label;
  final String routeName;

  const MedicinesNavigationItems({
    required this.iconAsset,
    required this.label,
    required this.routeName,
  });
}

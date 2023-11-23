import 'package:clothes_app/features/travel/home/view/pages/travel_home_page.dart';

enum TravelNavigationItems {
  home(
    iconAsset: 'assets/icons/icon_20.png',
    label: 'explore',
    routeName: TravelHomePage.routeName,
  ),

  pharmacies(
    iconAsset: 'assets/icons/icon_61.png',
    label: 'home',
    routeName: '',
  ),

  favorites(
    iconAsset: 'assets/icons/icon_62.png',
    label: 'favorites',
    routeName: '',
  ),

  more(
    iconAsset: 'assets/icons/icon_9.png',
    label: 'more',
    routeName: '',
  );

  final String iconAsset;
  final String label;
  final String routeName;

  const TravelNavigationItems({
    required this.iconAsset,
    required this.label,
    required this.routeName,
  });
}

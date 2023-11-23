import 'package:clothes_app/features/food/home/view/pages/food_home_page.dart';

enum FoodNavigationItems {
  home(
    iconAsset: 'assets/icons/icon_49.png',
    label: 'home',
    routeName: FoodHomePage.routeName,
  ),

  food(
    iconAsset: 'assets/icons/icon_50.png',
    label: 'food',
    routeName: FoodHomePage.routeName,
  ),

  cart(
    iconAsset: 'assets/icons/icon_51.png',
    label: 'cart',
    routeName: FoodHomePage.routeName,
  ),

  more(
    iconAsset: 'assets/icons/icon_9.png',
    label: 'more',
    routeName: '',
  );

  final String iconAsset;
  final String label;
  final String routeName;

  const FoodNavigationItems({
    required this.iconAsset,
    required this.label,
    required this.routeName,
  });
}

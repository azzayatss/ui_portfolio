import 'package:clothes_app/features/clothes/home/view/pages/clothes_home_page.dart';
import 'package:clothes_app/features/clothes/products_grid/view/clothes_grid_page.dart';

enum ClothesBottomMenuItems {
  home(
    iconAsset: 'assets/icons/icon_5.png',
    label: 'home',
    routeName: ClothesHomePage.routeName,
  ),
  catalogue(
    iconAsset: 'assets/icons/icon_8.png',
    label: 'catalogue',
    routeName: ClothesGridPage.routeName,
  ),

  more(
    iconAsset: 'assets/icons/icon_9.png',
    label: 'more',
    routeName: '',
  );

  final String iconAsset;
  final String label;
  final String routeName;

  const ClothesBottomMenuItems({
    required this.iconAsset,
    required this.label,
    required this.routeName,
  });
}

import 'package:clothes_app/features/clothes/home/view/pages/clothes_home_page.dart';
import 'package:clothes_app/features/food/home/view/pages/food_home_page.dart';
import 'package:clothes_app/features/medicines/home/view/pages/medicines_home_page.dart';
import 'package:clothes_app/features/travel/home/view/pages/travel_home_page.dart';

enum MoreItems {
  retail(
    label: 'Retail App',
    routeName: ClothesHomePage.routeName,
  ),
  healthcare(
    label: 'Healthcare App',
    routeName: MedicinesHomePage.routeName,
  ),
  food(
    label: 'Food App',
    routeName: FoodHomePage.routeName,
  ),
  travel(
    label: 'Travel App',
    routeName: TravelHomePage.routeName,
  );

  final String label;
  final String routeName;

  const MoreItems({
    required this.label,
    required this.routeName,
  });
}

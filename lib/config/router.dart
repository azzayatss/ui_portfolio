import 'package:animations/animations.dart';
import 'package:clothes_app/features/clothes/home/view/pages/clothes_home_page.dart';
import 'package:clothes_app/features/clothes/home/view/pages/clothes_main_shell_page.dart';
import 'package:clothes_app/features/clothes/product/view/pages/clothes_product_page.dart';
import 'package:clothes_app/features/clothes/products_grid/view/clothes_grid_page.dart';
import 'package:clothes_app/features/food/home/view/pages/food_home_page.dart';
import 'package:clothes_app/features/food/home/view/pages/food_main_shell_page.dart';
import 'package:clothes_app/features/food/restaurant/view/pages/food_restaurant_page.dart';
import 'package:clothes_app/features/medicines/home/view/pages/medicines_home_page.dart';
import 'package:clothes_app/features/medicines/home/view/pages/medicines_main_shell_page.dart';
import 'package:clothes_app/features/medicines/medicines_product/view/pages/medicines_product_page.dart';
import 'package:clothes_app/features/medicines/pharmacy/view/pages/medicines_pharmacy_page.dart';
import 'package:clothes_app/features/medicines/search/view/pages/medicines_search_results_page.dart';
import 'package:clothes_app/features/travel/apartment/view/pages/travel_apartment_page.dart';
import 'package:clothes_app/features/travel/home/view/pages/travel_home_page.dart';
import 'package:clothes_app/features/travel/home/view/pages/travel_main_shell_page.dart';
import 'package:clothes_app/features/travel/place/view/pages/travel_place_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> shellClothesNavigator =
    GlobalKey(debugLabel: 'shell');

final GlobalKey<NavigatorState> shellMedicinesNavigator =
    GlobalKey(debugLabel: 'medicines');

final GlobalKey<NavigatorState> shellFoodNavigator =
    GlobalKey(debugLabel: 'food');

final GlobalKey<NavigatorState> travelFoodNavigator =
    GlobalKey(debugLabel: 'travel');

class RouterSettings {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        // redirect: (context, state) => ClothesHomePage.route,
        redirect: (context, state) =>
            '${TravelHomePage.route}/${TravelApartmentPage.route}',
      ),
      //clothes
      ShellRoute(
        navigatorKey: shellClothesNavigator,
        builder: (context, state, child) => ClothesMainShellScreen(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
            path: ClothesHomePage.route,
            name: ClothesHomePage.routeName,
            pageBuilder: (context, state) => NavbarTransitionPage(
              key: state.pageKey,
              child: const ClothesHomePage(),
            ),
          ),
          GoRoute(
            path: ClothesGridPage.route,
            name: ClothesGridPage.routeName,
            pageBuilder: (context, state) => NavbarTransitionPage(
                key: state.pageKey, child: const ClothesGridPage()),
          ),
          GoRoute(
            path: ClothesProductPage.route,
            name: ClothesProductPage.routeName,
            pageBuilder: (context, state) => MasterDetailTransitionPage(
              key: state.pageKey,
              child: ClothesProductPage(
                itemId: state.uri.queryParameters['id']!,
              ),
            ),
          ),
        ],
      ),
      //medicines
      ShellRoute(
        navigatorKey: shellMedicinesNavigator,
        builder: (context, state, child) => MedicinesMainShellPage(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
            path: MedicinesHomePage.route,
            name: MedicinesHomePage.routeName,
            pageBuilder: (context, state) => NavbarTransitionPage(
              key: state.pageKey,
              child: const MedicinesHomePage(),
            ),
            routes: [
              GoRoute(
                path: MedicinesProductPage.route,
                name: MedicinesProductPage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: MedicinesProductPage(
                    productId: state.uri.queryParameters['id']!,
                  ),
                ),
              ),
              GoRoute(
                path: MedicinesSearchResultsPage.route,
                name: MedicinesSearchResultsPage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: MedicinesSearchResultsPage(
                    itemId: state.uri.queryParameters['id']!,
                  ),
                ),
              ),
              GoRoute(
                path: MedicinesPharmacyPage.route,
                name: MedicinesPharmacyPage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: MedicinesPharmacyPage(
                    itemId: state.uri.queryParameters['id']!,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //food
      ShellRoute(
        navigatorKey: shellFoodNavigator,
        builder: (context, state, child) => FoodMainShellPage(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
            path: FoodHomePage.route,
            name: FoodHomePage.routeName,
            pageBuilder: (context, state) => NavbarTransitionPage(
              key: state.pageKey,
              child: const FoodHomePage(),
            ),
            routes: [
              GoRoute(
                path: FoodRestaurantPage.route,
                name: FoodRestaurantPage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: FoodRestaurantPage(
                    restaurantrId: state.uri.queryParameters['id']!,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //travel
      ShellRoute(
        navigatorKey: travelFoodNavigator,
        builder: (context, state, child) => TravelMainShellPage(
          key: state.pageKey,
          child: child,
        ),
        routes: [
          GoRoute(
            path: TravelHomePage.route,
            name: TravelHomePage.routeName,
            pageBuilder: (context, state) => NavbarTransitionPage(
              key: state.pageKey,
              child: const TravelHomePage(),
            ),
            routes: [
              GoRoute(
                path: TravelPlacePage.route,
                name: TravelPlacePage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: const TravelPlacePage(),
                ),
              ),
              GoRoute(
                path: TravelApartmentPage.route,
                name: TravelApartmentPage.routeName,
                pageBuilder: (context, state) => MasterDetailTransitionPage(
                  key: state.pageKey,
                  child: const TravelApartmentPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class NavbarTransitionPage extends CustomTransitionPage {
  NavbarTransitionPage({
    required super.child,
    super.key,
  }) : super(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
        );
}

class MasterDetailTransitionPage extends CustomTransitionPage {
  MasterDetailTransitionPage({
    required super.child,
    super.key,
  }) : super(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
        );
}

class FoodMealModel {
  final String restaurantName;
  final String restaurantDescription;
  final double restaurantRate;
  final String mealName;
  final String mealPrice;
  final String mealWeight;
  final String mealCookingTime;
  final String imgAsset;
  final String id;

  FoodMealModel({
    required this.restaurantName,
    required this.restaurantRate,
    required this.mealName,
    required this.mealPrice,
    required this.mealWeight,
    required this.mealCookingTime,
    required this.imgAsset,
    required this.id,
    required this.restaurantDescription,
  });
}

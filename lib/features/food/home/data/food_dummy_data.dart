import 'package:clothes_app/features/food/home/data/food_meal_modelr.dart';

class FoodDummyData {
  final perfectDinerList = <FoodMealModel>[
    FoodMealModel(
        restaurantName: 'Al Safadi',
        restaurantDescription: 'Restaurant',
        restaurantRate: 4.5,
        mealName: 'Fatteh with yogurt',
        mealPrice: '32',
        mealWeight: '395',
        mealCookingTime: '10-15 Min',
        imgAsset: 'assets/images/img26.png',
        id: '0001'),
    FoodMealModel(
      restaurantName: 'Francesco Trattoria',
      restaurantRate: 4,
      mealName: 'Pasta & Meat Balls',
      mealPrice: '32',
      mealWeight: '490',
      mealCookingTime: '15-20 Min',
      imgAsset: 'assets/images/img30.png',
      id: '0002',
      restaurantDescription: 'Italian food',
    ),
    FoodMealModel(
      restaurantName: 'Irena',
      restaurantRate: 4,
      mealName: 'Checken Kabob',
      mealPrice: '27',
      mealWeight: '430',
      mealCookingTime: '5-10 Min',
      imgAsset: 'assets/images/img31.png',
      id: '0003',
      restaurantDescription: 'Grilled Chicken',
    ),
    FoodMealModel(
      restaurantName: 'Old Fashion',
      restaurantRate: 5,
      mealName: 'Grilled Salmon',
      mealPrice: '50',
      mealWeight: '520',
      mealCookingTime: '30 Min',
      imgAsset: 'assets/images/img32.png',
      id: '0004',
      restaurantDescription: 'Wine & Fish',
    ),
    FoodMealModel(
        restaurantName: 'Al Safadi',
        restaurantDescription: 'Restaurant',
        restaurantRate: 4.5,
        mealName: 'Fatteh with yogurt',
        mealPrice: '32',
        mealWeight: '395',
        mealCookingTime: '10-15 Min',
        imgAsset: 'assets/images/img26.png',
        id: '0005'),
  ];

  final restaurantPhotos = [
    'assets/images/img29.png',
    'assets/images/img33.png',
    'assets/images/img34.png',
    'assets/images/img35.png',
  ];
}

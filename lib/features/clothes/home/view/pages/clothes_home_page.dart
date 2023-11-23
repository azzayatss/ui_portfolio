import 'package:clothes_app/features/clothes/home/data/clothes_gender_enum.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_best_categories.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_new_in.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider.dart';
import 'package:flutter/material.dart';

class ClothesHomePage extends StatelessWidget {
  const ClothesHomePage({super.key});

  static const route = '/home';
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ClothesSlider(),
          ),
          ClothesNewIn(
            gender: ClothesGender.woman,
          ),
          ClothesNewIn(
            gender: ClothesGender.man,
          ),
          ClothesBestCategories(),
        ],
      ),
    );
  }
}

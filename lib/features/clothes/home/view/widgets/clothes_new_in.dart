import 'package:clothes_app/features/clothes/home/data/clothes_gender_enum.dart';
import 'package:clothes_app/features/clothes/home/data/clothes_new_in_dummy_data.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_new_in_item.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_new_in_text_block.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesNewIn extends StatelessWidget {
  const ClothesNewIn({
    super.key,
    required this.gender,
  });

  final ClothesGender gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gender == ClothesGender.man ? Colors.black : null,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClothesNewInTextBlock(
              productsCount: gender == ClothesGender.woman ? '604' : '291',
              gender: gender,
            ),
            const Gap(15),
            SizedBox(
              height: 260,
              child: ListView.builder(
                itemCount: gender == ClothesGender.woman
                    ? ClothesNewInDummyData().womanItems.length
                    : ClothesNewInDummyData().manItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClothesNewInItem(
                    gender: gender,
                    itemsList: gender == ClothesGender.woman
                        ? ClothesNewInDummyData().womanItems
                        : ClothesNewInDummyData().manItems,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

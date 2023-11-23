import 'package:clothes_app/features/clothes/home/data/clothes_new_in_dummy_data.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_buy_fab.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_product_category_and_price_section.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_product_description_section.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_product_image_section.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_product_size_and_color_section.dart';
import 'package:clothes_app/features/clothes/product/view/widgets/clothes_product_title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClothesProductPage extends HookWidget {
  const ClothesProductPage({
    super.key,
    required this.itemId,
  });

  static const route = '/product';
  static const routeName = '/product';

  final String itemId;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    final backgroundHeight =
        useState<double>(MediaQuery.sizeOf(context).height / 2);
    final offset = useState(0.0);
    final backgroundWidth = useState<double>(MediaQuery.sizeOf(context).width);

    controller.addListener(() {
      offset.value = controller.offset;

      // dev.log(offset.value.toString());
    });

    final item = ClothesNewInDummyData()
        .combined
        .firstWhere((element) => element.itemId == itemId);

    return Stack(
      children: [
        ListView(
          // physics: const ClampingScrollPhysics(),
          controller: controller,
          children: [
            // page main background
            Container(
              height: backgroundHeight.value,
              color: const Color(0xFFFFFFFF),
            ),

            // product description section
            SizedBox(
              height: backgroundHeight.value,
              child: const ClothesProductDescriptionSection(),
            ),
          ],
        ),

        // background color that transforms from a square to a circle
        Positioned(
          top: 0,
          right: 0,
          child: AnimatedCrossFade(
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeIn,
            firstChild: Container(
              height: backgroundHeight.value,
              width: backgroundWidth.value,
              color: const Color(0xFFF1EEE9),
            ),
            secondChild: Container(
              height: backgroundHeight.value - offset.value,
              width: backgroundWidth.value - offset.value,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF1EEE9),
              ),
            ),
            crossFadeState: offset.value > 20
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 400),
          ),
        ),

        // product image
        Positioned(
          top: 0,
          right: offset.value > 0 ? 0 + (offset.value / 8.5) : 0,
          child: SizedBox(
            height: backgroundHeight.value - offset.value,
            width: backgroundWidth.value / 2 - offset.value / 2,
            child: ClothesProductImageSection(img: item.imgAsset),
          ),
        ),

        // product category and price section
        Positioned(
          left: 0,
          top: 0 - offset.value * 2,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: offset.value >= 5 ? 0 : 1,
            child: ClothesProductCategoryAndPriceSection(
              productCategory: item.category,
              productPrice: item.itemPrice,
            ),
          ),
        ),

        //product title
        Positioned(
          left: 0,
          top: (backgroundHeight.value / 3) - offset.value / 2,
          child: AnimatedContainer(
            width: backgroundWidth.value / 2,
            duration: const Duration(microseconds: 500),
            child: ClothesProductTitleSection(productName: item.itemName),
          ),
        ),

        // size and color section
        Positioned(
          left: 0,
          top: backgroundHeight.value / 1.5 + offset.value / 2,
          bottom: backgroundHeight.value / 2.5,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: offset.value >= 5 ? 0 : 1,
            child: SizedBox(
              height: backgroundHeight.value / 3,
              child:
                  ClothesProductSizeAndColorSection(productSize: item.itemSize),
            ),
          ),
        ),
        const Positioned(
          bottom: 30,
          right: 30,
          child: ClothesBuyFAB(),
        ),
        Positioned(
          top: 180 + offset.value / 2,
          right: 10,
          child: Image.asset('assets/icons/icon_18.png'),
        ),
        Positioned(
          top: 240 + offset.value / 2,
          right: 10,
          child: Image.asset('assets/icons/icon_19.png'),
        ),
      ],
    );
  }
}

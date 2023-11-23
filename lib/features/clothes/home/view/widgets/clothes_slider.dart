import 'package:clothes_app/features/clothes/home/data/clothes_slider_dummy_data.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_indicators.dart';
import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClothesSlider extends HookWidget {
  const ClothesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = useState(1);
    final controller = usePageController(
      initialPage: 1,
      viewportFraction: 0.9,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 365,
          child: PageView.builder(
            controller: controller,
            itemCount: ClothesSalesSliderDummyData.backgroundImagesList.length,
            pageSnapping: true,
            itemBuilder: (context, index) {
              bool active = index == currentPageIndex.value;
              return ClothesSliderItem(
                bgImage:
                    ClothesSalesSliderDummyData.backgroundImagesList[index],
                isActive: active,
                discountInPercents:
                    ClothesSalesSliderDummyData.salesPercentsList[index],
                discountedGoods:
                    ClothesSalesSliderDummyData.salesGoodsList[index],
                saleDuration:
                    ClothesSalesSliderDummyData.salesDurationsList[index],
              );
            },
            onPageChanged: (page) {
              currentPageIndex.value = page;
            },
          ),
        ),
        Positioned(
            left: 80,
            bottom: 60,
            child: ClothesSliderIndicators(
              itemsCount:
                  ClothesSalesSliderDummyData.backgroundImagesList.length,
              currentIndex: currentPageIndex.value,
              activeColor: const Color(0xFFC7AF67),
            )),
      ],
    );
  }
}

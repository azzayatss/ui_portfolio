import 'package:clothes_app/features/clothes/home/view/widgets/clothes_slider_indicators.dart';
import 'package:clothes_app/features/travel/apartment/data/travel_featured_apartments_dummy_data.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_card_breakfast_label.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_page_header.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_page_image_section.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_page_main_info_section.dart';
import 'package:clothes_app/features/travel/apartment/view/widgets/travel_apartment_page_most_popular_facilities_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelApartmentPage extends StatelessWidget {
  const TravelApartmentPage({super.key});

  static const route = 'travel-apartment-page';
  static const routeName = 'travel-apartment-page';

  @override
  Widget build(BuildContext context) {
    final item = TravelFeaturedApartmentsDummyData().londonApartments[0];
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(color: Colors.blue.shade100.withOpacity(0.2)),
          Column(
            children: [
              const TravelApartmentPageImageSection(),
              TravelApartmentPageMainInfoSection(item: item),
              const Gap(15),
              const TravelApartmentPageMostPopularFacilitiesSection(),
            ],
          ),
          const Positioned(
            bottom: 25 + 447 + 444 + 15,
            left: 165,
            child: ClothesSliderIndicators(
              itemsCount: 5,
              currentIndex: 0,
              activeColor: Colors.white,
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            child: TravelApartmentPageHeader(),
          ),
          const TravelApartmentCardBreakfastLabel(
            bottom: 15 + 447 + 444 + 15,
            left: 15,
          ),
          Positioned(
            right: 15,
            bottom: 447 + 444 + 15 - 30,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              shape: const CircleBorder(),
              onPressed: () {},
              child: Image.asset('assets/icons/icon_62.png'),
            ),
          ),
        ],
      ),
    );
  }
}

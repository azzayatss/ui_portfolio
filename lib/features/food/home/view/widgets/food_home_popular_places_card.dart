import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class FoodHomePopularPlacesCard extends StatelessWidget {
  const FoodHomePopularPlacesCard({
    super.key,
    required this.controller,
    required this.currentPageIndex,
  });

  final PageController controller;
  final ValueNotifier<int> currentPageIndex;
  @override
  Widget build(BuildContext context) {
    //
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: screenHeight * 0.1954,
      child: PageView.builder(
        pageSnapping: true,
        controller: controller,
        itemCount: 5,
        onPageChanged: (page) {
          currentPageIndex.value = page;
        },
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: screenHeight * 0.1954,
              width: screenWidth * 0.8410,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/img28.png'),
                          const Gap(10),
                          const Text(
                            'Seafire',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Steakhouse and Bar',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          const Gap(10),
                          RatingBarIndicator(
                            itemSize: 35,
                            rating: 4,
                            itemCount: 5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF2CA53),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img27.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

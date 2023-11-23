import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesGridPageSliver extends StatelessWidget {
  const ClothesGridPageSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      toolbarHeight: 165,
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(20.0)),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img16.png'),
                  fit: BoxFit.cover),
              color: Color(0xFF161616),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '604 PRODUCTS',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF8A8A8A),
                ),
              ),
              const Text(
                'DRESSES',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/icon_13.png'),
                      const Gap(5),
                      const Text(
                        'SORT',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset('assets/icons/icon_14.png'),
                      const Gap(5),
                      const Text(
                        'FILTERS',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

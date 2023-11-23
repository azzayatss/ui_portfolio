import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class TravelApartmentPageHeader extends StatelessWidget {
  const TravelApartmentPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => context.pop(),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.share,
                color: Colors.white,
                size: 24,
              ),
              const Gap(15),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

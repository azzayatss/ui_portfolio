import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClothesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClothesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20.0)),
      child: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        toolbarHeight: 105,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DottedBorder(
                borderType: BorderType.Circle,
                color: const Color(0xFFC7AF67),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset('assets/images/img.png')),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                    ],
                  ),
                  const Gap(5),
                  Text(
                    ('C l o t h e s & m o r e').toUpperCase(),
                    style:
                        const TextStyle(fontSize: 8, color: Color(0xFF161616)),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          const Gap(20),
          Image.asset('assets/icons/icon_1.png'),
          const Gap(20),
          Image.asset('assets/icons/icon_2.png'),
          const Gap(20),
          Image.asset('assets/icons/icon_3.png'),
          const Gap(20),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(105);
}

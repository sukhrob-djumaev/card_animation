import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_item.dart';
import 'card_item_2.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'my cards'.toUpperCase(),
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextButton.icon(
              icon: SvgPicture.asset('assets/images/vector/icon_plus.svg'),
              onPressed: () {},
              label: const Text(
                'add card',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF2D6BE6)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Stack(
          clipBehavior: Clip.none,
          children: [
            CardItem2(),
            CardItem(),
          ],
        )
      ],
    );
  }
}

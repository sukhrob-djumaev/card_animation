import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpendingTopBar extends StatelessWidget implements PreferredSizeWidget {
  const SpendingTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 20),
          InkWell(
            borderRadius: BorderRadius.circular(36),
            onTap: () {
              Navigator.pop(context);
            },
            child: Ink(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: const Color(0xFFF4F6F9),
              ),
              child: SvgPicture.asset(
                'assets/images/vector/icon_back.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
          const Spacer(),
          const Text(
            'Spending',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          InkWell(
            borderRadius: BorderRadius.circular(36),
            onTap: () {},
            child: Ink(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: const Color(0xFFF4F6F9),
              ),
              child: SvgPicture.asset(
                'assets/images/vector/icon_notification.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

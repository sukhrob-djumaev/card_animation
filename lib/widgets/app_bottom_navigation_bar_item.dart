import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isSelected;
  final void Function() onTap;
  const AppBottomNavigationBarItem({
    super.key,
    required this.iconPath,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const animationDuration = Duration(milliseconds: 400);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: animationDuration,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: isSelected ? 12 : 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: isSelected ? const Color(0xFF2D6BE6) : null,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: isSelected ? const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn) : null,
            ),
            AnimatedContainer(duration: animationDuration, width: 8),
            if (isSelected) ...[
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'app_bottom_navigation_bar_item.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int selectedPageIndex;
  final void Function(int value) onTap;
  const AppBottomNavigationBar({
    super.key,
    required this.selectedPageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              color: const Color(0xFFF4F6F9),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBottomNavigationBarItem(
                  onTap: () => onTap(0),
                  iconPath: 'assets/images/vector/nav_home.svg',
                  text: 'Home',
                  isSelected: selectedPageIndex == 0,
                ),
                AppBottomNavigationBarItem(
                  onTap: () => onTap(1),
                  iconPath: 'assets/images/vector/nav_percent.svg',
                  text: 'Calculation',
                  isSelected: selectedPageIndex == 1,
                ),
                AppBottomNavigationBarItem(
                  onTap: () => onTap(2),
                  iconPath: 'assets/images/vector/nav_heart.svg',
                  text: 'Favorites',
                  isSelected: selectedPageIndex == 2,
                ),
                AppBottomNavigationBarItem(
                  onTap: () => onTap(3),
                  iconPath: 'assets/images/vector/nav_profile.svg',
                  text: 'Profile',
                  isSelected: selectedPageIndex == 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

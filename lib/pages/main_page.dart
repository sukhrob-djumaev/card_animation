import 'package:flutter/material.dart';

import '../widgets/app_bottom_navigation_bar.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onBottomNavigationBarTap(int value) {
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              HomePage(),
              Scaffold(body: Center(child: Text('Calculations'))),
              Scaffold(body: Center(child: Text('Favorites'))),
              Scaffold(body: Center(child: Text('Profile'))),
            ],
            onPageChanged: (value) => setState(() => pageIndex = value),
          ),
          Positioned(
            bottom: 0,
            child: AppBottomNavigationBar(
              selectedPageIndex: pageIndex,
              onTap: _onBottomNavigationBarTap,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/cards.dart';
import '../widgets/graph.dart';
import '../widgets/home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeTopBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 28),
                    Hero(tag: 'graph', child: Graph()),
                    SizedBox(height: 44),
                    Cards(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

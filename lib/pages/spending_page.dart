import 'package:card_animation/widgets/expenses.dart';
import 'package:card_animation/widgets/spending_top_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/graph.dart';
import '../widgets/history.dart';

class SpendingPage extends StatelessWidget {
  const SpendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SpendingTopBar(),
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
                    SizedBox(height: 36),
                    Expenses(),
                    SizedBox(height: 36),
                    History(),
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

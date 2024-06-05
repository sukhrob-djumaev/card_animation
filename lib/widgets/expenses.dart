import 'package:card_animation/data/graph_model.dart';
import 'package:card_animation/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GraphModel>(
      builder: (BuildContext context, GraphModel model, Widget? child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 700),
            transitionBuilder: (child, animation) {
              final slideAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(animation);
              return SlideTransition(
                position: slideAnimation,
                child: child,
              );
            },
            child: model.selectedMonthIndex == null
                ? const SizedBox()
                : Row(
                    children: [
                      ...model.expenses.map(
                        (e) => ExpenseItem(item: e),
                      )
                    ],
                  ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/graph_model.dart';
import 'history_item.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GraphModel>(
      builder: (BuildContext context, GraphModel model, Widget? child) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 700),
          transitionBuilder: (child, animation) {
            final slideAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(animation);
            return SlideTransition(
              position: slideAnimation,
              child: child,
            );
          },
          child: model.selectedMonthIndex == null
              ? const SizedBox()
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'history'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'view all',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF2D6BE6)),
                          ),
                        ),
                      ],
                    ),
                    const HistoryItem(),
                    const HistoryItem(),
                    const HistoryItem(),
                    const HistoryItem(),
                  ],
                ),
        );
      },
    );
  }
}

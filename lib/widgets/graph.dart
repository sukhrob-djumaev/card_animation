import 'package:card_animation/data/graph_model.dart';
import 'package:card_animation/widgets/graph_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'graph_counter.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final barWidth = (width - 40 - 50) / 6;

    return Material(
      type: MaterialType.transparency,
      child: Consumer<GraphModel>(
        builder: (context, model, child) {
          final totalBarHeight = height / 5;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 700),
                        child: Text(
                          model.title.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'money spending',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF717681),
                        ),
                      )
                    ],
                  ),
                  GraphCounter(
                    model.total,
                    duration: const Duration(milliseconds: 400),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...model.indexes.map(
                      (index) {
                        return GestureDetector(
                          onTap: () async {
                            if (model.selectedMonthIndex == null) {
                              Navigator.of(context).pushNamed('/spending').then((_) async {
                                await Future.delayed(const Duration(milliseconds: 400));
                                model.unselectMonthIndex();
                              });
                              await Future.delayed(const Duration(milliseconds: 400));
                              model.selectMonthIndex(index);
                            }
                          },
                          child: GraphItem(
                            width: barWidth,
                            title: model.barTitles[index],
                            value: model.barValuePercentage[index] * totalBarHeight,
                            totalValue: totalBarHeight,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

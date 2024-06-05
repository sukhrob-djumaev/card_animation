import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/models.dart';

class ExpenseItem extends StatelessWidget {
  final Expense item;
  const ExpenseItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0x2B594BFB),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/vector/icon_handbag.svg'),
          const Spacer(),
          FittedBox(
            child: Text(
              item.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF98A1B3)),
            ),
          ),
          Text(
            '\$ ${item.amount}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

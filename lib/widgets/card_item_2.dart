import 'package:flutter/material.dart';

class CardItem2 extends StatelessWidget {
  const CardItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 58, left: 4, right: 4),
      height: 195,
      padding: const EdgeInsets.fromLTRB(23, 23, 23, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        image: const DecorationImage(
          image: AssetImage('assets/images/raster/gradient_bg_2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Family Card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Text(
                '\$ 12,021',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFFFFFFF),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Image.asset(
              'assets/images/raster/logo_adidas.png',
              width: 48,
              height: 48,
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopping at adidas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '**** 3456',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(
                        0xFF717681,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '- \$200',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '01 Mar',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(
                      0xFF717681,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 8),
        const Divider(color: Color(0xFFEBEDF1), height: 1)
      ],
    );
  }
}

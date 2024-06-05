import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      padding: const EdgeInsets.fromLTRB(28, 28, 28, 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        image: const DecorationImage(
          image: AssetImage('assets/images/raster/gradient_bg.png'),
          fit: BoxFit.cover,
        ),
        color: const Color(0xFFFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Family Card',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '*3456',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFC3C8D1),
                    ),
                  ),
                ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(52),
                      border: Border.all(
                        color: const Color(0xFFFFFFFF),
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignInside,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/raster/avatar_1.png',
                      width: 48,
                      height: 48,
                    ),
                  ),
                  Positioned(
                    left: 36,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                        border: Border.all(
                          color: const Color(0xFFFFFFFF),
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/raster/avatar_2.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 72,
                    child: SvgPicture.asset(
                      'assets/images/vector/icon_plus_2.svg',
                      width: 48,
                      height: 48,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/raster/logo_visa.png',
                height: 22,
              )
            ],
          )
        ],
      ),
    );
  }
}

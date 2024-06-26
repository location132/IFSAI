import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainHotPromotion extends StatefulWidget {
  const MainHotPromotion({super.key});

  @override
  State<MainHotPromotion> createState() => _MainHotPromotionState();
}

class _MainHotPromotionState extends State<MainHotPromotion> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Row(
          children: [
            Text(
              'HOT 프로모션🔥',
              style: TextStyle(
                color: Color(0xff111111),
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            /*
            Text(
              '전체보기',
              style: TextStyle(
                color: Color(0xff8e8e8e),
                fontSize: 10,
                fontFamily: 'Pretendard',
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color(0xff8e8e8e),
              size: 14,
            )
            */
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: screenWidth * 0.356,
          decoration: BoxDecoration(
            color: const Color(0xffdbdbdb),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                '${dotenv.env['API_URL']}/images/promotion.png',
                fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}

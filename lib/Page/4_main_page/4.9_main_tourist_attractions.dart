import 'package:flutter/material.dart';

class MainTouristAttractions extends StatefulWidget {
  const MainTouristAttractions({super.key});

  @override
  State<MainTouristAttractions> createState() => _MainTouristAttractionsState();
}

class _MainTouristAttractionsState extends State<MainTouristAttractions> {
  Widget buildAttractionCard() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.282,
      width: screenWidth * 0.44,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '#부산 #관광지',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  '스카이캡슐 \n반값으로 입장하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '000님만을 위한 추천 관광명소',
              style: TextStyle(
                color: Color(0xff111111),
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              '전체보기',
              style: TextStyle(
                color: Color(0xff8e8e8e),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Color(0xff8e8e8e),
              size: 16,
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            buildAttractionCard(),
            const SizedBox(width: 14), // 간격 추가
            buildAttractionCard(),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            buildAttractionCard(),
            const SizedBox(width: 14), // 간격 추가
            buildAttractionCard(),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MainFeaturedStores extends StatefulWidget {
  const MainFeaturedStores({super.key});

  @override
  State<MainFeaturedStores> createState() => _MainFeaturedStoresState();
}

class _MainFeaturedStoresState extends State<MainFeaturedStores> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.053),
          child: const Row(
            children: [
              Text(
                '이런 스토어는 어떠세요?',
                style: TextStyle(
                  color: Color(0xFF111111),
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    '전체보기',
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontSize: 10,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xFF8E8E8E),
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 6),
          child: SizedBox(
            height: screenWidth * 0.26,
            child: PageView(
              controller: PageController(viewportFraction: 0.96),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                      List.generate(2, (index) => _buildCard(screenWidth)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                      List.generate(2, (index) => _buildCard(screenWidth)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard(double screenWidth) {
    return Container(
      width: screenWidth * 0.445,
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Row(
          children: [
            Container(
              width: screenWidth * 0.445 * 0.45,
              height: double.infinity,
              color: Colors.grey,
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '태권치킨',
                      style: TextStyle(
                        color: Color(0xff111111),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '치킨.안주.주류',
                      style: TextStyle(
                        color: Color(0xff8e8e8e),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                      ),
                    ),
                    Text(
                      '첫 구매시 3,000원 \n할인 이벤트 진행 중!',
                      style: TextStyle(
                        color: Color(0xfff64f4f),
                        fontSize: 8,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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

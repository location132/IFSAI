import 'package:flutter/material.dart';

class MainBestReview extends StatefulWidget {
  const MainBestReview({super.key});

  @override
  State<MainBestReview> createState() => _MainBestReviewState();
}

class _MainBestReviewState extends State<MainBestReview> {
  Widget buildReviewItem() {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          child: SizedBox(
            width: screenWidth * 0.331,
            height: double.infinity,
            child: Image.asset(
              'assets/images/testStore2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          // SizedBox 대신 Expanded 사용
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start, // 내용을 왼쪽 정렬
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color(0xffd9d9d9),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '고앵고앵',
                      style: TextStyle(
                        color: Color(0xff282828),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Expanded(
                      // 이것은 이미 올바르게 사용되고 있음
                      child: Text(
                        '12시간 전',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff8e8e8e),
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  height: 1,
                  color: Color(0xfff5f5f5),
                ),
                const SizedBox(height: 5),
                const Expanded(
                  child: Text(
                    '여러분 여기 진짜 맛집이에요!!!! 너모너모 맛있어요ㅠ잎사이 쿠폰으로 어디서도 보지 못한 할인을 받아서가격도 착하고 맛도 미쳤답니당,,,, 잎사이 사용자라면꼭 여기는 먹어봐야해요! 완전 강추!!!!',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xff5b5b5b),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.thumb_up_off_alt_outlined,
                      size: 20,
                      color: Color(0xff6fbf8a),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '45',
                      style: TextStyle(
                        color: Color(0xff8e8e8e),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.053, right: screenWidth * 0.053),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'BEST 리뷰✨',
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 6),
          child: SizedBox(
            height: screenWidth * 0.387,
            child: PageView(
              controller:
                  PageController(viewportFraction: 1.0 - 12.0 / screenWidth),
              scrollDirection: Axis.horizontal,
              children: [
                // 첫 번째 컨테이너에 패딩 추가
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: buildReviewItem()),
                ),
                // 두 번째 컨테이너에 패딩 추가 (동일한 설정)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: buildReviewItem()),
                ),
                // 세 번째 컨테이너에 패딩 추가 (동일한 설정)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: buildReviewItem()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

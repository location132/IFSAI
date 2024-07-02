import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/4.6.1_main_best_review_contauner.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainBestReview extends StatefulWidget {
  final VoidCallback onLoadingComplete;

  const MainBestReview({super.key, required this.onLoadingComplete});

  @override
  State<MainBestReview> createState() => _MainBestReviewState();
}

class _MainBestReviewState extends State<MainBestReview> {
  final PageController _controller = PageController();
  List<Map<String, dynamic>> serverResult = [];

  bool _isFinish = false;

  @override
  void initState() {
    super.initState();
    bestReviewGetDio();
  }

  void bestReviewGetDio() async {
    serverResult = await mainScreenBestReviews();

    _isFinish = true;
    widget.onLoadingComplete();
    setState(() {});
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
            child: _isFinish
                ? PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      // 첫 번째 컨테이너에 패딩 추가
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.032,
                            right: screenWidth * 0.032,
                            top: 10,
                            bottom: 10),
                        //const EdgeInsets.symmetric(
                        //     horizontal: 5, vertical: 10),

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
                          child: BestReview3(reviewsData: serverResult[0]),
                        ),
                      ),
                      // 두 번째 컨테이너에 패딩 추가 (동일한 설정)
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.032,
                            right: screenWidth * 0.032,
                            top: 10,
                            bottom: 10),
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
                          child: BestReview3(reviewsData: serverResult[1]),
                        ),
                      ),
                      // 세 번째 컨테이너에 패딩 추가 (동일한 설정)
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.032,
                            right: screenWidth * 0.032,
                            top: 10,
                            bottom: 10),
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
                          child: BestReview3(reviewsData: serverResult[2]),
                        ),
                      ),
                    ],
                  )
                : Padding(
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
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Color(0xff6fbf8a), // 선택될 때의 색상
            dotColor: Color(0xffd9d9d9), // 선택되지 않았을 때의 색상
            dotHeight: 7, // 점의 높이
            dotWidth: 7, // 점의 너비
            expansionFactor: 4, // 확장 요소 (확장되는 정도)
          ),
        ),
      ],
    );
  }
}

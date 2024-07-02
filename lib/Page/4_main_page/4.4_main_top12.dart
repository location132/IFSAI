import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/4.4.1_main_top_12_container.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainTop12 extends StatefulWidget {
  final VoidCallback onLoadingComplete;

  const MainTop12({super.key, required this.onLoadingComplete});

  @override
  State<MainTop12> createState() => _MainTop12State();
}

class _MainTop12State extends State<MainTop12> {
  final PageController _controller = PageController();
  bool _isFinish = false;
  List<Map<String, dynamic>> serverResult = [];
  List<Map<String, dynamic>> storePage1 = [];
  List<Map<String, dynamic>> storePage2 = [];
  List<Map<String, dynamic>> storePage3 = [];
  List<Map<String, dynamic>> storePage4 = [];

  @override
  void initState() {
    super.initState();
    top12GetDio();
  }

  void top12GetDio() async {
    serverResult = await mainScreenTop12();

    _isFinish = dataProcessing();
    if (_isFinish == true) {
      widget.onLoadingComplete();
    }

    setState(() {});
  }

  bool dataProcessing() {
    storePage1 = serverResult.sublist(0, 3);
    storePage2 = serverResult.sublist(3, 6);
    storePage3 = serverResult.sublist(6, 9);
    storePage4 = serverResult.sublist(9, 12);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.055, right: screenWidth * 0.055),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'TOP 12 👑',
                style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 20,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/DetailTop12Store');
                },
                child: const Text(
                  '전체보기',
                  style: TextStyle(
                    color: Color(0xff8e8e8e),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xff8e8e8e),
                size: 16,
              )
            ],
          ),
        ),
        // 페이지 뷰 만들기
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.041, right: screenWidth * 0.041),
              child: SizedBox(
                height: screenWidth * 0.815,
                child: _isFinish
                    ? PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
//---------------------
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.008,
                                right: screenWidth * 0.008,
                                top: 10,
                                bottom: 10),
                            // const EdgeInsets.symmetric(
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
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                      height: screenWidth * 0.765,
                                      child: Top12(
                                          number: 1,
                                          serverResultData: storePage1));
                                },
                              ),
                            ),
                          ),
                          //--------------------------
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
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
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                      height: screenWidth * 0.765,
                                      child: Top12(
                                          number: 4,
                                          serverResultData: storePage2));
                                },
                              ),
                            ),
                          ),
                          //------------------------
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
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
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                      height: screenWidth * 0.765,
                                      child: Top12(
                                          number: 7,
                                          serverResultData: storePage3));
                                },
                              ),
                            ),
                          ),
                          //------------------
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
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
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                      height: screenWidth * 0.765,
                                      child: Top12(
                                          number: 10,
                                          serverResultData: storePage4));
                                },
                              ),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
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
              count: 4,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xff6fbf8a), // 선택될 때의 색상
                dotColor: Color(0xffd9d9d9), // 선택되지 않았을 때의 색상
                dotHeight: 7, // 점의 높이
                dotWidth: 7, // 점의 너비
                expansionFactor: 4, // 확장 요소 (확장되는 정도)
              ),
            ),
          ],
        ),
      ],
    );
  }
}

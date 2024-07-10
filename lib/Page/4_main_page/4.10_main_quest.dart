import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';

class MainQuest extends StatefulWidget {
  const MainQuest({super.key});

  @override
  State<MainQuest> createState() => _MainQuestState();
}

class _MainQuestState extends State<MainQuest> {
  final PageController _controller = PageController();
  List<Map<String, dynamic>> serverResult = [];

  @override
  void initState() {
    super.initState();
    questGetDio();
  }

  void questGetDio() async {
    serverResult = await mainScreenQuest();
    print(serverResult);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final secondScreenHeight = screenHeight * 0.2465;
    final secondScreenWidth = screenWidth - screenWidth * 0.082;

    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '진행 중인 퀘스트',
              style: TextStyle(
                color: Color(0xff111111),
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
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
        SizedBox(
          height: screenWidth * 0.585,
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0, 2),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: secondScreenHeight * 0.081),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: secondScreenHeight * 0.08,
                          child: const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '[30단계]',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 잎사이 30일 출석하기',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 24,
                                color: Color(0xff8e8e8e),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: secondScreenWidth * 0.776,
                              height: secondScreenHeight * 0.038,
                              child: LinearProgressIndicator(
                                color: const Color(0xff6fbf8a),
                                backgroundColor: const Color(0xffeeeeee),
                                value: 0.96,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '29/30',
                              style: TextStyle(
                                color: Color(0xff8e8e8e),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16.5,
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xfff5f5f5),
                      ),
                      const SizedBox(
                        height: 18.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: secondScreenHeight * 0.08,
                          child: const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '[30단계]',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 잎사이 30일 출석하기',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 24,
                                color: Color(0xff8e8e8e),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: secondScreenWidth * 0.776,
                              height: secondScreenHeight * 0.038,
                              child: LinearProgressIndicator(
                                color: const Color(0xff6fbf8a),
                                backgroundColor: const Color(0xffeeeeee),
                                value: 0.2,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '1/5',
                              style: TextStyle(
                                color: Color(0xff8e8e8e),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16.5,
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xfff5f5f5),
                      ),
                      const SizedBox(
                        height: 18.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: secondScreenHeight * 0.08,
                          child: const Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '[30단계]',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 잎사이 30일 출석하기',
                                      style: TextStyle(
                                        color: Color(0xff5b5b5b),
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 24,
                                color: Color(0xff8e8e8e),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: secondScreenWidth * 0.776,
                              height: secondScreenHeight * 0.038,
                              child: LinearProgressIndicator(
                                color: const Color(0xff6fbf8a),
                                backgroundColor: const Color(0xffeeeeee),
                                value: 0.333,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '2/3',
                              style: TextStyle(
                                color: Color(0xff8e8e8e),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0, 2),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: secondScreenWidth * 0.047,
                        right: secondScreenWidth * 0.047),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: screenWidth * 0.17,
                                ),
                                Container(
                                  width: secondScreenWidth * 0.885,
                                  height: secondScreenHeight * 0.025,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffeeeeee),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: secondScreenWidth * 0.075,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.07,
                                    ),
                                    Container(
                                      width: secondScreenWidth * 0.15,
                                      height: secondScreenWidth * 0.15,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Transform(
                                            transform:
                                                Matrix4.rotationY(3.14159),
                                            alignment: Alignment.center,
                                            child:
                                                const CircularProgressIndicator(
                                              strokeCap: StrokeCap.round,
                                              strokeWidth: 5,
                                              value: 0,
                                              backgroundColor:
                                                  Color(0xffeeeeee),
                                              color: Color(0xff6fbf8a),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color(0xffeeeeee)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: secondScreenWidth * 0.1),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.07,
                                    ),
                                    Container(
                                      width: secondScreenWidth * 0.235,
                                      height: secondScreenWidth * 0.235,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Transform(
                                            transform:
                                                Matrix4.rotationY(3.14159),
                                            alignment: Alignment.center,
                                            child:
                                                const CircularProgressIndicator(
                                              strokeCap: StrokeCap.round,
                                              strokeWidth: 5,
                                              value: 0.5,
                                              backgroundColor:
                                                  Color(0xffeeeeee),
                                              color: Color(0xff6fbf8a),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Image.asset(
                                                'assets/images/category_image_book.png', //이미지 바꿔야함
                                                scale: 2.9,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: secondScreenWidth * 0.1),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.07,
                                    ),
                                    Container(
                                      width: secondScreenWidth * 0.15,
                                      height: secondScreenWidth * 0.15,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Transform(
                                            transform:
                                                Matrix4.rotationY(3.14159),
                                            alignment: Alignment.center,
                                            child:
                                                const CircularProgressIndicator(
                                              strokeCap: StrokeCap.round,
                                              strokeWidth: 5,
                                              value: 1,
                                              backgroundColor:
                                                  Color(0xffeeeeee),
                                              color: Color(0xff6fbf8a),
                                            ),
                                          ),
                                          const Center(
                                            child: Text(
                                              '4',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w800,
                                                  color: Color(0xff6fbf8a)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: secondScreenWidth * 0.075),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.26,
                                    ),
                                    const Text(
                                      '[ 달성완료 ]',
                                      style: TextStyle(
                                          fontSize: 12.3,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Pretendard',
                                          color: Color(0xffbdbdbd)),
                                    ),
                                    const Text('리뷰 2개 작성하기',
                                        style: TextStyle(
                                            fontSize: 12.3,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Pretendard',
                                            color: Color(0xffbdbdbd))),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    const Text('+20P',
                                        style: TextStyle(
                                            fontSize: 12.3,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Pretendard',
                                            color: Color(0xffbdbdbd))),
                                  ],
                                ),
                                // SizedBox(
                                //   width: screenWidth * 0.06,
                                // ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.33,
                                    ),
                                    const Text(
                                      '[ 진행중 ]',
                                      style: TextStyle(
                                          fontSize: 12.3,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Pretendard'),
                                    ),
                                    const Text('리뷰 2개 작성하기',
                                        style: TextStyle(
                                            fontSize: 12.3,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Pretendard')),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    const Text('+20P',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Pretendard',
                                            color: Colors.red)),
                                  ],
                                ),
                                // SizedBox(
                                //   width: screenWidth * 0.06,
                                // ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenWidth * 0.26,
                                    ),
                                    const Text(
                                      '[ 진행예정 ]',
                                      style: TextStyle(
                                          fontSize: 12.3,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Pretendard',
                                          color: Color(0xffbdbdbd)),
                                    ),
                                    const Text('리뷰 2개 작성하기',
                                        style: TextStyle(
                                            fontSize: 12.3,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Pretendard',
                                            color: Color(0xffbdbdbd))),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    const Text('+20P',
                                        style: TextStyle(
                                            fontSize: 12.3,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Pretendard',
                                            color: Color(0xffbdbdbd))),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

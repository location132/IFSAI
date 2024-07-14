import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class MainQuest extends StatefulWidget {
  const MainQuest({super.key});

  @override
  State<MainQuest> createState() => _MainQuestState();
}

class _MainQuestState extends State<MainQuest> {
  final PageController _controller = PageController();
  List<Map<String, dynamic>> serverResult = [];
  bool showFirstPage = false;
  bool showSecondPage = false;
  bool showThirdPage = false;
  bool loginState = false;

  @override
  void initState() {
    super.initState();
    loginState = Provider.of<LoginModel>(context, listen: false).loginStatus;
    questGetDio();
  }

  void questGetDio() async {
    serverResult = await mainScreenQuest();
    print(serverResult);
    setState(() {});
  }

  //10글자 넘어가면 ...으로 표시
  String formatMessage(String message, int number) {
    String updatedMessage =
        message.replaceAll(RegExp(r'\d+'), number.toString());

    if (updatedMessage.contains('할인쿠폰')) {
      return updatedMessage.substring(0, 8);
    } else if (updatedMessage.contains('리뷰')) {
      if (number > 8) {
        return updatedMessage.substring(0, 9);
      } else {
        return updatedMessage.substring(0, 8);
      }
    } else {
      if (number > 9) {
        return updatedMessage.substring(0, 10);
      } else {
        return updatedMessage.substring(0, 9);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final secondScreenHeight = screenHeight * 0.2465;
    final secondScreenWidth = screenWidth - screenWidth * 0.082;

    //로그인 안했을 때
    if (!loginState) {
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
            child: Padding(
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
                child: ClipRRect(
                  child: Stack(
                    children: [
                      Column(
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
                                    value: 0,
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
                                          text: '[5단계]',
                                          style: TextStyle(
                                            color: Color(0xff5b5b5b),
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 잎사이 할인쿠폰 5번 사용하기',
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
                                    value: 0,
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
                                          text: '[3단계]',
                                          style: TextStyle(
                                            color: Color(0xff5b5b5b),
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 리뷰 3번 쓰기',
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
                                    value: 0,
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
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '로그인 후 이용해주세요👀',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/LoginPage');
                                  },
                                  child: const Text(
                                    '로그인하러가기',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xff6fbf8a),
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xff6fbf8a),
                                        decorationStyle:
                                            TextDecorationStyle.solid),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return serverResult.isEmpty
        ? const SizedBox()
        : Column(
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
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          showFirstPage = true;
                                          showSecondPage = false;
                                          showThirdPage = false;
                                        });
                                        _controller.animateToPage(
                                          1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  '[${serverResult[0]['level'].toString()}단계]',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' ${serverResult[0]['message']}',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
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
                                      value: serverResult[0]['expValue'] /
                                          serverResult[0]
                                              ['weight_currentLevel'],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '${serverResult[0]['expValue'].toString()}/${serverResult[0]['weight_currentLevel'].toString()}',
                                    style: const TextStyle(
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
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          showFirstPage = false;
                                          showSecondPage = true;
                                          showThirdPage = false;
                                        });
                                        _controller.animateToPage(
                                          1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  '[${serverResult[1]['level'].toString()}단계]',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' ${serverResult[1]['message']}',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
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
                                      value: serverResult[1]['expValue'] /
                                          serverResult[1]
                                              ['weight_currentLevel'],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '${serverResult[1]['expValue'].toString()}/${serverResult[1]['weight_currentLevel'].toString()}',
                                    style: const TextStyle(
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
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          showFirstPage = false;
                                          showSecondPage = false;
                                          showThirdPage = true;
                                        });
                                        _controller.animateToPage(
                                          1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  '[${serverResult[2]['level'].toString()}단계]',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' ${serverResult[2]['message']}',
                                              style: const TextStyle(
                                                color: Color(0xff5b5b5b),
                                                fontFamily: 'Pretendard',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
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
                                      value: serverResult[2]['expValue'] /
                                          serverResult[2]
                                              ['weight_currentLevel'],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '${serverResult[2]['expValue'].toString()}/${serverResult[2]['weight_currentLevel'].toString()}',
                                    style: const TextStyle(
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
                    if (showFirstPage)
                      detailQuest(
                          secondScreenWidth,
                          screenWidth,
                          secondScreenHeight,
                          0,
                          'assets/images/quest_image_tickets.png'),
                    if (showSecondPage)
                      detailQuest(
                          secondScreenWidth,
                          screenWidth,
                          secondScreenHeight,
                          1,
                          'assets/images/quest_image_calendar.png'),
                    if (showThirdPage)
                      detailQuest(
                          secondScreenWidth,
                          screenWidth,
                          secondScreenHeight,
                          2,
                          'assets/images/quest_image_memo.png'),
                  ],
                ),
              ),
            ],
          );
  }

  Padding detailQuest(double secondScreenWidth, double screenWidth,
      double secondScreenHeight, int questNum, String image) {
    return Padding(
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
                                  transform: Matrix4.rotationY(3.14159),
                                  alignment: Alignment.center,
                                  child: const CircularProgressIndicator(
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 5,
                                    value: 0,
                                    backgroundColor: Color(0xffeeeeee),
                                    color: Color(0xff6fbf8a),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    serverResult[questNum]
                                            ['weight_previousLevel']
                                        .toString(),
                                    style: const TextStyle(
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
                                  transform: Matrix4.rotationY(3.14159),
                                  alignment: Alignment.center,
                                  child: CircularProgressIndicator(
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 5,
                                    value: 1.0 -
                                        (serverResult[questNum]['expValue'] /
                                            serverResult[questNum]
                                                ['weight_currentLevel']),
                                    backgroundColor: const Color(0xffeeeeee),
                                    color: const Color(0xff6fbf8a),
                                  ),
                                ),
                                Center(
                                  child: Image.asset(
                                    image, //이미지 바꿔야함
                                    scale: 2.9,
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
                                  transform: Matrix4.rotationY(3.14159),
                                  alignment: Alignment.center,
                                  child: const CircularProgressIndicator(
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 5,
                                    value: 1,
                                    backgroundColor: Color(0xffeeeeee),
                                    color: Color(0xff6fbf8a),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    serverResult[questNum]['weight_nextLevel']
                                        .toString(),
                                    style: const TextStyle(
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
                      SizedBox(
                        width: secondScreenWidth * 0.25,
                        child: Column(
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
                            Text(
                              formatMessage(
                                  serverResult[questNum]['message'],
                                  serverResult[questNum]
                                      ['weight_previousLevel']),
                              style: const TextStyle(
                                fontSize: 12.3,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Pretendard',
                                color: Color(0xffbdbdbd),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                                '+ ${serverResult[questNum]['gainExp_previousLevel']}P',
                                style: const TextStyle(
                                    fontSize: 12.3,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Pretendard',
                                    color: Color(0xffbdbdbd))),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: secondScreenWidth * 0.25,
                        child: Column(
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
                            Text(
                                formatMessage(
                                    serverResult[questNum]['message'],
                                    serverResult[questNum]
                                        ['weight_currentLevel']),
                                style: const TextStyle(
                                    fontSize: 12.3,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Pretendard')),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                                '+ ${serverResult[questNum]['gainExp_currentLevel']}P',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Pretendard',
                                    color: Colors.red)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: secondScreenWidth * 0.25,
                        child: Column(
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
                            Text(
                                formatMessage(serverResult[questNum]['message'],
                                    serverResult[questNum]['weight_nextLevel']),
                                style: const TextStyle(
                                    fontSize: 12.3,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Pretendard',
                                    color: Color(0xffbdbdbd))),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                                '+ ${serverResult[questNum]['gainExp_nextLevel']}P',
                                style: const TextStyle(
                                    fontSize: 12.3,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Pretendard',
                                    color: Color(0xffbdbdbd))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

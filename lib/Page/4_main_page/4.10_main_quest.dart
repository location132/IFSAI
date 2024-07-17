import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/4.10.1_main_quest_guest.dart';
import 'package:my_dream/Page/4_main_page/main_detail_page/4_detail_quest.dart';
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
    questGetDio();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final loginstatus = Provider.of<LoginModel>(context);
    if (loginstatus.loginStatus) {
      loginState = loginstatus.loginStatus;
      questGetDio();
      setState(() {});
    } else {
      loginState = loginstatus.loginStatus;
      serverResult = [];
      setState(() {});
    }
  }

  void questGetDio() async {
    if (loginState) {
      serverResult = await mainScreenQuest();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final secondScreenHeight = screenHeight * 0.2465;
    final secondScreenWidth = screenWidth - screenWidth * 0.082;

    return (loginState && serverResult.isNotEmpty)
        ? Column(
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
                                      child: Row(
                                        children: [
                                          Text.rich(
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
                                          const SizedBox(width: 5),
                                          const Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            size: 24,
                                            color: Color(0xff8e8e8e),
                                          )
                                        ],
                                      ),
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
                                      child: Row(
                                        children: [
                                          Text.rich(
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
                                          const SizedBox(width: 5),
                                          const Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            size: 24,
                                            color: Color(0xff8e8e8e),
                                          ),
                                        ],
                                      ),
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
                                      child: Row(
                                        children: [
                                          Text.rich(
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
                                          const SizedBox(width: 5),
                                          const Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            size: 24,
                                            color: Color(0xff8e8e8e),
                                          ),
                                        ],
                                      ),
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
                      DetailQuest3(
                          serverResult: serverResult,
                          questNum: 0,
                          image: 'assets/images/quest_image_tickets.png'),
                    if (showSecondPage)
                      DetailQuest3(
                          serverResult: serverResult,
                          questNum: 1,
                          image: 'assets/images/quest_image_calendar.png'),
                    if (showThirdPage)
                      DetailQuest3(
                          serverResult: serverResult,
                          questNum: 1,
                          image: 'assets/images/quest_image_memo.png'),
                  ],
                ),
              ),
            ],
          )
        : const QuestForGuest();
  }
}

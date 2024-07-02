import 'package:flutter/material.dart';

class MainQuest extends StatefulWidget {
  const MainQuest({super.key});

  @override
  State<MainQuest> createState() => _MainQuestState();
}

class _MainQuestState extends State<MainQuest> {
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
        Container(
          width: double.infinity,
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
                    Container(
                      width: secondScreenWidth * 0.776,
                      height: secondScreenHeight * 0.038,
                      decoration: BoxDecoration(
                        color: const Color(0xff6fbf8a),
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
                    Container(
                      width: secondScreenWidth * 0.776,
                      height: secondScreenHeight * 0.038,
                      decoration: BoxDecoration(
                        color: const Color(0xff6fbf8a),
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
                    Container(
                      width: secondScreenWidth * 0.776,
                      height: secondScreenHeight * 0.038,
                      decoration: BoxDecoration(
                        color: const Color(0xff6fbf8a),
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
              const SizedBox(height: 18),
            ],
          ),
        ),
      ],
    );
  }
}

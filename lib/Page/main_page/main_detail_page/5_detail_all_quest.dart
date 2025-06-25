import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/coreService/Shimmer_loading/loding_gif_IFSAI.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:provider/provider.dart';

class DetailAllQuest extends StatefulWidget {
  const DetailAllQuest({super.key});

  @override
  State<DetailAllQuest> createState() => _DetailAllQuestState();
}

class _DetailAllQuestState extends State<DetailAllQuest> {
  bool _isScreenLoad = false;

  @override
  void initState() {
    super.initState();
    final loginStatus =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    if (loginStatus) {
      // MainCubit을 통해 퀘스트 데이터 로드
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<MainCubit>().questGetDio(() {
          setState(() {
            _isScreenLoad = true;
          });
        });
      });
    } else {
      setState(() {
        _isScreenLoad = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final secondscreenWidth = screenWidth - screenWidth * 0.082;
    final secondScreenHeight = screenHeight * 0.2465;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<MainCubit, MainState>(
              builder: (context, state) {
                return (_isScreenLoad && state.questServerResult.isNotEmpty)
                    ? AnimatedOpacity(
                        opacity: !_isScreenLoad ? 0.0 : 1.0,
                        duration: const Duration(milliseconds: 420),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.041,
                                  right: screenWidth * 0.041),
                              child: Column(
                                children: [
                                  const CustomAppBar(title: '퀘스트'),
                                  Container(
                                    height: screenHeight * 0.067,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xffd6d6d6),
                                          width: 1.7),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.083,
                                          right: screenWidth * 0.083),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '내가 모은 포인트',
                                            style: TextStyle(
                                                fontFamily: 'Pretendard'),
                                          ),
                                          Text(
                                            '0P', // TODO: 실제 포인트 연결 필요
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff6fbf8a),
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.013,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.041,
                                      right: screenWidth * 0.041,
                                      top: screenHeight * 0.01),
                                  child: Column(
                                    children: [
                                      if (state.questServerResult.isNotEmpty)
                                        allQeust3(
                                            1,
                                            'assets/images/quest_image_calendar.png',
                                            state.questServerResult,
                                            screenWidth,
                                            secondscreenWidth,
                                            secondScreenHeight,
                                            screenHeight),
                                      SizedBox(height: screenHeight * 0.03),
                                      if (state.questServerResult.length > 1)
                                        allQeust3(
                                            2,
                                            'assets/images/quest_image_memo.png',
                                            state.questServerResult,
                                            screenWidth,
                                            secondscreenWidth,
                                            secondScreenHeight,
                                            screenHeight),
                                      SizedBox(height: screenHeight * 0.03),
                                      if (state.questServerResult.length > 2)
                                        allQeust3(
                                            0,
                                            'assets/images/quest_image_tickets.png',
                                            state.questServerResult,
                                            screenWidth,
                                            secondscreenWidth,
                                            secondScreenHeight,
                                            screenHeight),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : const SizedBox();
              },
            ),
            AnimatedOpacity(
              opacity: !_isScreenLoad ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 420),
              child: LodingGifIfsai(
                isLoadingFinish: _isScreenLoad,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//quest container 위젯
Widget allQeust3(
    int questNum,
    String image,
    List<dynamic> serverResult, // QuestModel 리스트로 변경됨
    double screenWidth,
    double secondScreenWidth,
    double secondScreenHeight,
    double screenHeight) {
  String formatMessage(String message, int number) {
    String updatedMessage =
        message.replaceAll(RegExp(r'\d+'), number.toString());

    if (updatedMessage.contains('할인쿠폰')) {
      if (number < 9) {
        return updatedMessage.substring(6, 14);
      } else {
        return updatedMessage.substring(6, 15);
      }
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

  if (questNum >= serverResult.length) return const SizedBox();

  final quest = serverResult[questNum];

  return Container(
    height: screenHeight * 0.285,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 10,
          offset: Offset(0, 2),
          spreadRadius: 0,
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.17,
                height: screenWidth * 0.17,
                child: Image.asset(image),
              ),
              SizedBox(width: screenWidth * 0.05),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '[${quest.level}단계]',
                      style: const TextStyle(
                        color: Color(0xff5b5b5b),
                        fontSize: 18,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      formatMessage(quest.message, quest.level),
                      style: const TextStyle(
                        color: Color(0xff5b5b5b),
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  color: const Color(0xff6fbf8a),
                  backgroundColor: const Color(0xffeeeeee),
                  value: quest.expValue / quest.weightCurrentLevel,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '${quest.expValue}/${quest.weightCurrentLevel}',
                style: const TextStyle(
                  color: Color(0xff8e8e8e),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '보상',
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 14,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${quest.gainExpCurrentLevel}P',
                style: const TextStyle(
                  color: Color(0xff6fbf8a),
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

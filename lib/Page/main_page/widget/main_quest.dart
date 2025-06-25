import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/components/main_container.dart';
import 'package:my_dream/Page/4_main_page/components/main_title_overview.dart';

class MainQuest extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainQuest({super.key, required this.onLoadingComplete});

  @override
  State<MainQuest> createState() => _MainQuestState();
}

class _MainQuestState extends State<MainQuest> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().questGetDio(() {
        widget.onLoadingComplete(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final secondScreenHeight = screenHeight * 0.2465;
    final secondScreenWidth = screenWidth - screenWidth * 0.082;

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return (state.questServerResult.isNotEmpty && !state.questIsLoading)
            ? Column(
                children: [
                  MainTitleOverview(
                    title: '진행 중인 퀘스트',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailAllQuest(
                      //       serverResult: state.questServerResult,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.041),
                    child: SizedBox(
                      height: screenWidth * 0.585,
                      child: PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: MainContainer(
                              content: Column(
                                children: [
                                  SizedBox(height: secondScreenHeight * 0.081),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: SizedBox(
                                      height: secondScreenHeight * 0.08,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () {
                                              context
                                                  .read<MainCubit>()
                                                  .setQuestShowPages(
                                                    first: true,
                                                    second: false,
                                                    third: false,
                                                  );
                                              _controller.animateToPage(
                                                1,
                                                duration: const Duration(
                                                    milliseconds: 500),
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
                                                            '[${state.questServerResult[0].level.toString()}단계]',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            ' ${state.questServerResult[0].message}',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                const Icon(
                                                  Icons
                                                      .keyboard_arrow_right_outlined,
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
                                            backgroundColor:
                                                const Color(0xffeeeeee),
                                            value: state.questServerResult[0]
                                                    .expValue /
                                                state.questServerResult[0]
                                                    .weightCurrentLevel,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${state.questServerResult[0].expValue.toString()}/${state.questServerResult[0].weightCurrentLevel.toString()}',
                                          style: const TextStyle(
                                            color: Color(0xff8e8e8e),
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16.5),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                  const SizedBox(height: 18.5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: SizedBox(
                                      height: secondScreenHeight * 0.08,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () {
                                              context
                                                  .read<MainCubit>()
                                                  .setQuestShowPages(
                                                    first: false,
                                                    second: true,
                                                    third: false,
                                                  );
                                              _controller.animateToPage(
                                                1,
                                                duration: const Duration(
                                                    milliseconds: 500),
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
                                                            '[${state.questServerResult[1].level.toString()}단계]',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            ' ${state.questServerResult[1].message}',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                const Icon(
                                                  Icons
                                                      .keyboard_arrow_right_outlined,
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
                                            backgroundColor:
                                                const Color(0xffeeeeee),
                                            value: state.questServerResult[1]
                                                    .expValue /
                                                state.questServerResult[1]
                                                    .weightCurrentLevel,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${state.questServerResult[1].expValue.toString()}/${state.questServerResult[1].weightCurrentLevel.toString()}',
                                          style: const TextStyle(
                                            color: Color(0xff8e8e8e),
                                            fontSize: 12,
                                            fontFamily: 'Pretendard',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16.5),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                  const SizedBox(height: 18.5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: SizedBox(
                                      height: secondScreenHeight * 0.08,
                                      child: Row(
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () {
                                              context
                                                  .read<MainCubit>()
                                                  .setQuestShowPages(
                                                    first: false,
                                                    second: false,
                                                    third: true,
                                                  );
                                              _controller.animateToPage(
                                                1,
                                                duration: const Duration(
                                                    milliseconds: 500),
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
                                                            '[${state.questServerResult[2].level.toString()}단계]',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            ' ${state.questServerResult[2].message}',
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff5b5b5b),
                                                          fontFamily:
                                                              'Pretendard',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                const Icon(
                                                  Icons
                                                      .keyboard_arrow_right_outlined,
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
                                            backgroundColor:
                                                const Color(0xffeeeeee),
                                            value: state.questServerResult[2]
                                                    .expValue /
                                                state.questServerResult[2]
                                                    .weightCurrentLevel,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${state.questServerResult[2].expValue.toString()}/${state.questServerResult[2].weightCurrentLevel.toString()}',
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
                          // if (state.questShowFirstPage)
                          //   DetailQuest3(
                          //       serverResult: state.questServerResult,
                          //       questNum: 0,
                          //       image: 'assets/images/quest_image_tickets.png'),
                          // if (state.questShowSecondPage)
                          //   DetailQuest3(
                          //       serverResult: state.questServerResult,
                          //       questNum: 1,
                          //       image:
                          //           'assets/images/quest_image_calendar.png'),
                          // if (state.questShowThirdPage)
                          //   DetailQuest3(
                          //       serverResult: state.questServerResult,
                          //       questNum: 2,
                          //       image: 'assets/images/quest_image_memo.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}

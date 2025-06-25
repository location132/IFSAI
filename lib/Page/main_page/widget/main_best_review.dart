import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/widget/4.6.1_main_best_review_contauner.dart';
import 'package:my_dream/Page/4_main_page/components/main_SmoothPageIndicator.dart';
import 'package:my_dream/Page/4_main_page/components/main_container.dart';
import 'package:my_dream/Page/4_main_page/components/main_title_overview.dart';

class MainBestReview extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainBestReview({super.key, required this.onLoadingComplete});

  @override
  State<MainBestReview> createState() => _MainBestReviewState();
}

class _MainBestReviewState extends State<MainBestReview> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().bestReviewGetDio(() {
        widget.onLoadingComplete(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return state.bestReviewIsFinish
            ? Column(
                children: [
                  const MainTitleOverview(
                    title: 'BEST 리뷰✨',
                    isShowMore: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 6),
                    child: SizedBox(
                      height: screenWidth * 0.387,
                      child: PageView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          // 첫 번째 컨테이너
                          if (state.bestReviewServerResult.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.032,
                                  right: screenWidth * 0.032,
                                  top: 10,
                                  bottom: 10),
                              child: MainContainer(
                                content: BestReview3(
                                    reviewsData:
                                        state.bestReviewServerResult[0]),
                              ),
                            ),
                          // 두 번째 컨테이너
                          if (state.bestReviewServerResult.length > 1)
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.032,
                                  right: screenWidth * 0.032,
                                  top: 10,
                                  bottom: 10),
                              child: MainContainer(
                                content: BestReview3(
                                    reviewsData:
                                        state.bestReviewServerResult[1]),
                              ),
                            ),
                          // 세 번째 컨테이너
                          if (state.bestReviewServerResult.length > 2)
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.032,
                                  right: screenWidth * 0.032,
                                  top: 10,
                                  bottom: 10),
                              child: MainContainer(
                                content: BestReview3(
                                    reviewsData:
                                        state.bestReviewServerResult[2]),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  MainSmoothPageIndicator(
                    controller: _controller,
                    count: state.bestReviewServerResult.length,
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
              );
      },
    );
  }
}

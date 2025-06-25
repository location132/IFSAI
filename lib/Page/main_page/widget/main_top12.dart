import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/widget/4.4.1_main_top_12_container.dart';
import 'package:my_dream/Page/4_main_page/components/main_SmoothPageIndicator.dart';
import 'package:my_dream/Page/4_main_page/components/main_container.dart';
import 'package:my_dream/Page/4_main_page/components/main_title_overview.dart';

class MainTop12 extends StatefulWidget {
  final Function(bool) onLoadingComplete;

  const MainTop12({super.key, required this.onLoadingComplete});

  @override
  State<MainTop12> createState() => _MainTop12State();
}

class _MainTop12State extends State<MainTop12> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().top12GetDio(() {
        widget.onLoadingComplete(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Column(
          children: [
            MainTitleOverview(
              title: 'TOP 12 👑',
              onTap: () {
                Navigator.pushNamed(context, '/DetailTop12Store');
              },
            ),
            // 페이지 뷰 만들기
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 6),
                  child: SizedBox(
                    height: screenWidth * 0.815,
                    child: state.top12IsFinish
                        ? PageView(
                            controller: _controller,
                            scrollDirection: Axis.horizontal,
                            children: [
                              //---------------------
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.032,
                                    right: screenWidth * 0.032,
                                    top: 10,
                                    bottom: 10),
                                child: MainContainer(
                                  content: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                          height: screenWidth * 0.765,
                                          child: Top12(
                                              number: 1,
                                              serverResultData:
                                                  state.top12StorePage1));
                                    },
                                  ),
                                ),
                              ),
                              //--------------------------
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.032,
                                    right: screenWidth * 0.032,
                                    top: 10,
                                    bottom: 10),
                                child: MainContainer(
                                  content: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                          height: screenWidth * 0.765,
                                          child: Top12(
                                              number: 4,
                                              serverResultData:
                                                  state.top12StorePage2));
                                    },
                                  ),
                                ),
                              ),
                              //------------------------
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.032,
                                    right: screenWidth * 0.032,
                                    top: 10,
                                    bottom: 10),
                                child: MainContainer(
                                  content: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                          height: screenWidth * 0.765,
                                          child: Top12(
                                              number: 7,
                                              serverResultData:
                                                  state.top12StorePage3));
                                    },
                                  ),
                                ),
                              ),
                              //------------------
                              Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.032,
                                    right: screenWidth * 0.032,
                                    top: 10,
                                    bottom: 10),
                                child: MainContainer(
                                  content: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                          height: screenWidth * 0.765,
                                          child: Top12(
                                              number: 10,
                                              serverResultData:
                                                  state.top12StorePage4));
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
                MainSmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

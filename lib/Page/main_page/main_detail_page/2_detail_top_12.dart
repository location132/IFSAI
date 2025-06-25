import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/4_main_page/widget/4.4.1_main_top_12_container.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';

class DetailTop12 extends StatefulWidget {
  const DetailTop12({super.key});

  @override
  State<DetailTop12> createState() => _DetailTop12State();
}

class _DetailTop12State extends State<DetailTop12> {
  @override
  void initState() {
    super.initState();
    // MainCubit을 통해 데이터 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().top12GetDio(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.041, right: screenWidth * 0.041),
                  child: const CustomAppBar(title: 'TOP 12 👑'),
                ),
                Expanded(
                  child:
                      state.top12IsFinish && state.top12ServerResult.isNotEmpty
                          ? SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.041,
                                    right: screenWidth * 0.041,
                                    top: screenHeight * 0.01),
                                child: Column(
                                  children: [
                                    // 1-3위
                                    SizedBox(
                                      height: screenWidth * 0.77,
                                      child: Top12(
                                        number: 1,
                                        serverResultData: state.top12StorePage1,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.03),
                                    // 4-6위
                                    SizedBox(
                                      height: screenWidth * 0.77,
                                      child: Top12(
                                        number: 4,
                                        serverResultData: state.top12StorePage2,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.03),
                                    // 7-9위
                                    SizedBox(
                                      height: screenWidth * 0.77,
                                      child: Top12(
                                        number: 7,
                                        serverResultData: state.top12StorePage3,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.03),
                                    // 10-12위
                                    SizedBox(
                                      height: screenWidth * 0.77,
                                      child: Top12(
                                        number: 10,
                                        serverResultData: state.top12StorePage4,
                                      ),
                                    ),
                                    SizedBox(height: screenHeight * 0.03),
                                  ],
                                ),
                              ),
                            )
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

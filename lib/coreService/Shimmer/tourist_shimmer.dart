import 'package:flutter/material.dart';
import 'package:my_dream/coreService/widget/searchbar.dart';
import 'package:shimmer/shimmer.dart';

class TouristShimmer extends StatefulWidget {
  const TouristShimmer({super.key});

  @override
  State<TouristShimmer> createState() => _TouristShimmerState();
}

class _TouristShimmerState extends State<TouristShimmer> {
  Widget buildAttractionCardLoading() {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardHeight = screenWidth * 0.305;

    return SizedBox(
      width: double.infinity,
      height: cardHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Shimmer.fromColors(
              baseColor: const Color(0xffc1c1c1),
              highlightColor: const Color(0xfff5f5f5),
              child: Container(
                width: double.infinity,
                height: cardHeight,
                decoration: const BoxDecoration(
                  color: Color(0xffdbdbdb),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newTouristContainerLoading() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.041, right: screenWidth * 0.041),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.12,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        const Color(0x0c000000).withOpacity(0.03),
                        const Color(0x0c000000).withOpacity(0.03),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)),
                            child: Shimmer.fromColors(
                              baseColor: const Color(0xffc1c1c1),
                              highlightColor: const Color(0xfff5f5f5),
                              child: Container(
                                width: screenHeight * 0.12,
                                height: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0xffdbdbdb),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Shimmer.fromColors(
                                    baseColor: const Color(0xffe0e0e0),
                                    highlightColor: const Color(0xfff5f5f5),
                                    child: Container(
                                      width: screenWidth * 0.17,
                                      height: screenHeight * 0.023,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffdbdbdb),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.007),
                                  Shimmer.fromColors(
                                    baseColor: const Color(0xffe0e0e0),
                                    highlightColor: const Color(0xfff5f5f5),
                                    child: Container(
                                      width: screenWidth * 0.25,
                                      height: screenHeight * 0.019,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffdbdbdb),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.007),
                                  Shimmer.fromColors(
                                    baseColor: const Color(0xffe0e0e0),
                                    highlightColor: const Color(0xfff5f5f5),
                                    child: Container(
                                      width: screenWidth * 0.52,
                                      height: screenHeight * 0.019,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffdbdbdb),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Shimmer.fromColors(
                                    baseColor: const Color(0xffe0e0e0),
                                    highlightColor: const Color(0xfff5f5f5),
                                    child: Container(
                                      width: screenWidth * 0.35,
                                      height: screenHeight * 0.019,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffdbdbdb),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.041, right: screenWidth * 0.041),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.064,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back_ios_rounded,
                                  size: 24),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                splashFactory: NoSplash.splashFactory,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            const Expanded(
                              child: Center(
                                child: Text(
                                  '관광명소',
                                  style: TextStyle(
                                    color: Color(0xff111111),
                                    fontSize: 20,
                                    fontFamily: 'Pretendard',
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back_ios_rounded,
                                    size: 24),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                      const Searchbar(textEditing: '원하는 장소를 검색해보세요.'),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.041,
                              right: screenWidth * 0.041),
                          child: Column(
                            children: [
                              SizedBox(height: screenHeight * 0.019),
                              Column(
                                children: [
                                  buildAttractionCardLoading(),
                                  SizedBox(height: screenHeight * 0.012),
                                  buildAttractionCardLoading(),
                                  Container(
                                    height: screenHeight * 0.05,
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.028,
                                          width: screenWidth * 0.18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return newTouristContainerLoading();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

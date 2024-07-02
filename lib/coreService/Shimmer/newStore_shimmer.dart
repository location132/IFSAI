import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewStoreShimmer extends StatefulWidget {
  const NewStoreShimmer({super.key});

  @override
  State<NewStoreShimmer> createState() => _NewStoreShimmerState();
}

class _NewStoreShimmerState extends State<NewStoreShimmer> {
  Widget newStoreContainerLoading() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.041, right: screenWidth * 0.041),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.125,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: const Color(0xfffdfdfd),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0c000000),
                        offset: Offset(2, 0),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x0c000000),
                        offset: Offset(-2, 0),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: screenWidth * 0.08),
                          Shimmer.fromColors(
                            baseColor: const Color(0xffe0e0e0),
                            highlightColor: const Color(0xfff5f5f5),
                            child: Container(
                              height: screenHeight * 0.024,
                              width: 9,
                              decoration: const BoxDecoration(
                                color: Color(0xffdbdbdb),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.06),
                          Shimmer.fromColors(
                            baseColor: const Color(0xffc1c1c1),
                            highlightColor: const Color(0xfff5f5f5),
                            child: Container(
                              height: screenHeight * 0.080,
                              width: screenHeight * 0.080,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffdbdbdb),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.06),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: screenHeight * 0.018,
                              ),
                              Shimmer.fromColors(
                                baseColor: const Color(0xffe0e0e0),
                                highlightColor: const Color(0xfff5f5f5),
                                child: Container(
                                  width: screenWidth * 0.1,
                                  height: screenHeight * 0.021,
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
                                  width: screenWidth * 0.19,
                                  height: screenHeight * 0.021,
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
                                  width: 99,
                                  height: screenHeight * 0.021,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffdbdbdb),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        top: 10,
                        child: Container(
                          height: 18,
                          width: 28,
                          decoration: const BoxDecoration(
                            color: Color(0xffdbdbdb),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 6, right: 5),
                          ),
                        ),
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
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.03, right: screenWidth * 0.041),
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              '신규 스토어',
                              style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 20,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                          ),
                        ),
                        const Opacity(
                          opacity: 0,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios_rounded, size: 24),
                            onPressed: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 1),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.011),
                    child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        cursorHeight: 20,
                        textAlignVertical: const TextAlignVertical(y: 0.3),
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          filled: true,
                          fillColor: const Color(0xfff5f5f5),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Transform.translate(
                              offset: const Offset(10, 0),
                              child: const Icon(
                                Icons.search,
                                size: 30,
                                color: Color(0xff6fbf8a),
                              ),
                            ),
                          ),
                          hintText: '검색어를 입력해주세요.',
                          hintStyle: const TextStyle(
                              color: Color(0xffc1c1c1),
                              fontFamily: 'Pretendard'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return newStoreContainerLoading();
            },
          ),
        ),
      ],
    );
  }
}

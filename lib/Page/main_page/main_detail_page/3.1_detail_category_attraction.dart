import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailCategoryAttraction extends StatefulWidget {
  const DetailCategoryAttraction({super.key});

  @override
  State<DetailCategoryAttraction> createState() =>
      _DetailCategoryAttractionState();
}

class _DetailCategoryAttractionState extends State<DetailCategoryAttraction> {
  int currentPage = 1;
  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    // MainCubit을 통해 관광지 데이터 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().attractionsGetDio(() {});
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
                  child: Column(
                    children: [
                      const CustomAppBar(title: '관광지'),
                      // 정렬 드롭다운
                      Container(
                        height: screenHeight * 0.053,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xffd6d6d6), width: 1.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.07,
                              right: screenWidth * 0.07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '추천 관광지',
                                style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              DropdownButton(
                                hint: const Text(" 선택하세요"),
                                value: selectedValue,
                                items: listItem.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.013),
                    ],
                  ),
                ),
                Expanded(
                  child: state.touristServerResult.isNotEmpty &&
                          state.touristIsFinish
                      ? GridView.builder(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.041),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 14,
                            mainAxisSpacing: 14,
                            childAspectRatio: 0.9,
                          ),
                          itemCount: state.touristServerResult.length,
                          itemBuilder: (context, index) {
                            final attraction = state.touristServerResult[index];
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: attraction.imageUrl,
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                    Positioned(
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.8),
                                              Colors.black.withOpacity(0.005)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      bottom: 10,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            attraction.tags,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            attraction.introduce,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
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

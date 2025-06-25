import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/coreService/widget/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailCategoryEating extends StatefulWidget {
  const DetailCategoryEating({super.key});

  @override
  State<DetailCategoryEating> createState() => _DetailCategoryEatingState();
}

class _DetailCategoryEatingState extends State<DetailCategoryEating> {
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    // MainCubit을 통해 신규 매장 데이터 로드
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MainCubit>().newStoreGetDio(() {});
    });
  }

  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

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
                      const CustomAppBar(title: '먹거리'),
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
                                '신규 매장',
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
                  child: state.newStoreSeverResult.isNotEmpty
                      ? GridView.builder(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.041),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.75,
                          ),
                          itemCount: state.newStoreSeverResult.length,
                          itemBuilder: (context, index) {
                            final store = state.newStoreSeverResult[index];
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/StoreDetail',
                                  arguments: {
                                    'marketId': store.marketId,
                                    'isFavorite': false,
                                  },
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        ),
                                        child: Stack(
                                          children: [
                                            CachedNetworkImage(
                                              imageUrl: store.marketImage,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                            Positioned(
                                              top: 8,
                                              left: 0,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6,
                                                        vertical: 2),
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff6fbf8a),
                                                ),
                                                child: const Text(
                                                  'NEW',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontFamily: 'Pretendard',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              store.marketName,
                                              style: const TextStyle(
                                                color: Color(0xff111111),
                                                fontSize: 14,
                                                fontFamily:
                                                    'PretendardSemiBold',
                                                fontWeight: FontWeight.w600,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              store.marketDescription,
                                              style: const TextStyle(
                                                color: Color(0xff8e8e8e),
                                                fontSize: 11,
                                                fontFamily: 'Pretendard',
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              store.eventMessage?.isNotEmpty ==
                                                      true
                                                  ? store.eventMessage!
                                                  : '이번에 새로 입점한 스토어에요!',
                                              style: TextStyle(
                                                color: store.eventMessage
                                                            ?.isNotEmpty ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.grey,
                                                fontSize: 10,
                                                fontFamily: 'PretendardBold',
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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

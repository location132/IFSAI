import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:my_dream/coreService/Shimmer/newStore_shimmer.dart';

import 'package:my_dream/coreService/widget/searchbar.dart';

class DetailTouristAttraction extends StatefulWidget {
  const DetailTouristAttraction({super.key});

  @override
  State<DetailTouristAttraction> createState() =>
      _DetailTouristAttractionState();
}

class _DetailTouristAttractionState extends State<DetailTouristAttraction> {
  final TextEditingController _textEditingController = TextEditingController();
  List<Map<String, dynamic>> newStore = [];
  List<Map<String, dynamic>> originalStore = []; // 원래의 스토어 리스트 백업
  String page = '0';
  int storeCount = 0;
  bool _isLoadingFinish = false;
  bool _opacityText = false;

  List<Map<String, dynamic>> serverResult = [];
  bool _isFinish = false;

  @override
  void initState() {
    super.initState();
    newStoreToDio();
    attractionsGetDio();
  }

  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

  void newStoreToDio() async {
    originalStore = await mainScreenNewStoreDetail(page);
    newStore = List.from(originalStore); // 원래의 스토어 리스트 백업
    setState(() {
      storeCount = newStore.length;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _isLoadingFinish = true;
    });
  }

  //뒤로가기 로직
  void reSetScreen() {
    if (_opacityText) {
      setState(() {
        _textEditingController.text = '';
        _opacityText = false;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void attractionsGetDio() async {
    serverResult = await mainScreenTourism();
    setState(() {
      _isFinish = true;
    });
  }

  Widget newStoreContainer(Map<String, dynamic> store) {
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
                child: SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.12,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4)),
                            child: SizedBox(
                                width: screenHeight * 0.12,
                                height: double.infinity,
                                child: Image.network(store['market0'],
                                    fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxWidth: screenWidth * 0.55,
                                        ),
                                        child: RichText(
                                          overflow: TextOverflow.ellipsis,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: store['market1'],
                                                style: const TextStyle(
                                                  color: Color(0xff111111),
                                                  fontSize: 16,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const TextSpan(
                                                text: '   ',
                                              ),
                                              TextSpan(
                                                text:
                                                    '현재 지점에서부터 ${store['market6']}',
                                                style: const TextStyle(
                                                  color: Color(0xff6fbf8a),
                                                  fontSize: 12,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  Text(
                                    store['market2'],
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Color(0xff5b5b5b),
                                      fontSize: 12,
                                      fontFamily: 'Pretendard',
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.014),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: Text(
                                      '영업시간 : ${store['market4']} ~ ${store['market5']} ㅣ 매주 화요일 휴무',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xff393939),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                  SizedBox(height: screenWidth * 0.008),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: Text(
                                      store['market3'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xfff64f4f),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
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
                                reSetScreen();
                              },
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
                      const Searchbar(),
                    ],
                  ),
                ),
                Expanded(
                  child: IgnorePointer(
                    ignoring: !_isLoadingFinish,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 420),
                      opacity: _isLoadingFinish ? 1.0 : 0.0,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.03,
                                  right: screenWidth * 0.041),
                              child: Column(
                                children: [
                                  SizedBox(height: screenHeight * 0.024),
                                  Column(
                                    children: [
                                      _isFinish
                                          ? Column(
                                              children: [
                                                BuildAttractionCard(
                                                    serverResultData:
                                                        serverResult[0]),
                                                SizedBox(
                                                    height:
                                                        screenHeight * 0.012),
                                                BuildAttractionCard(
                                                    serverResultData:
                                                        serverResult[1]),
                                              ],
                                            )
                                          : const SizedBox(),
                                      Container(
                                        height: screenHeight * 0.06,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xfff5f5f5),
                                                width: 2),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: screenHeight * 0.03,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffdbdbdb),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 5),
                                                child: DropdownButton<String>(
                                                  underline: Container(),
                                                  value: selectedValue,
                                                  hint: const Text(
                                                    '최신순',
                                                  ),
                                                  icon: const Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Color(0xff8e8e8e),
                                                    size: 20,
                                                  ),
                                                  style: const TextStyle(
                                                    color: Color(0xff8e8e8e),
                                                    fontSize: 13,
                                                    fontFamily: 'Pretendard',
                                                  ),
                                                  items: listItem
                                                      .map((String item) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: item,
                                                      child: Text(item),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      selectedValue = newValue;
                                                    });
                                                  },
                                                ),
                                              ),
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
                              itemCount: originalStore.length,
                              itemBuilder: (context, index) {
                                return newStoreContainer(originalStore[index]);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IgnorePointer(
              ignoring: _isLoadingFinish,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 420),
                opacity: !_isLoadingFinish ? 1.0 : 0.0,
                child: const NewStoreShimmer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//---------------------------------------
// 사진 위젯 카드
//---------------------------------------

class BuildAttractionCard extends StatelessWidget {
  final Map<String, dynamic> serverResultData;

  const BuildAttractionCard({
    super.key,
    required this.serverResultData,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.141;

    return SizedBox(
      width: double.infinity,
      height: cardHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Image.network(
              serverResultData['market0'].toString(),
              fit: BoxFit.cover,
              width: double.infinity,
              height: cardHeight,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.85555555),
                    Colors.black.withOpacity(0.005)
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Text(
                '#${serverResultData['market1'][0]}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

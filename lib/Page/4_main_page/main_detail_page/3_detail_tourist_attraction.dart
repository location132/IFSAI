import 'package:flutter/material.dart';
import 'package:my_dream/Page/4_main_page/main_dio/main_screen_dio.dart';
import 'package:my_dream/coreService/Shimmer/tourist_shimmer.dart';
import 'package:my_dream/coreService/widget/banner.dart';
import 'package:my_dream/coreService/widget/searchbar.dart';

class DetailTouristAttraction extends StatefulWidget {
  const DetailTouristAttraction({super.key});

  @override
  State<DetailTouristAttraction> createState() =>
      _DetailTouristAttractionState();
}

class _DetailTouristAttractionState extends State<DetailTouristAttraction> {
  List<Map<String, dynamic>> serverResult = [];
  List<Map<String, dynamic>> serverResult2 = [];
  bool _isLoadingFinish = false;

  @override
  void initState() {
    super.initState();
    attractionsGetDio();
  }

  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

  void attractionsGetDio() async {
    serverResult = await detailScreenTourism(2);
    serverResult2 = await mainScreenTourism(12);
    setState(() {
      _isLoadingFinish = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _isLoadingFinish
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.041,
                            right: screenWidth * 0.041),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.064,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                        Icons.arrow_back_ios_rounded,
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
                                      icon: const Icon(
                                          Icons.arrow_back_ios_rounded,
                                          size: 24),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 1),
                            const Searchbar(textEditing: '원하는 장소를 검색해보세요.'),
                            const SizedBox(height: 15),
                            // ------------배너 위젯-----------------//
                            Stack(
                              children: [
                                BannerWidget(
                                  height: screenWidth * 0.305,
                                  imagePath: '${serverResult[0]['market0']}',
                                ),
                                Container(
                                  height: screenWidth * 0.305,
                                  width: double.infinity,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.85555555),
                                        Colors.black.withOpacity(0.005)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 15,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '#${serverResult[0]['market1'][0]}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            '#${serverResult[0]['market1'][1]}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${serverResult[0]['market2']}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Stack(
                              children: [
                                BannerWidget(
                                  height: screenWidth * 0.305,
                                  imagePath: '${serverResult[1]['market0']}',
                                ),
                                Container(
                                  height: screenWidth * 0.305,
                                  width: double.infinity,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.85555555),
                                        Colors.black.withOpacity(0.005)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 15,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '#${serverResult[1]['market1'][0]}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            '#${serverResult[1]['market1'][1]}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${serverResult[1]['market2']}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // ------------최신순 - 인기순 - 거리순 ---------------//
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xffdbdbdb),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
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
                                      items: listItem.map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(item),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue = newValue;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      //----------- 리스트 뷸더------------------
                      Expanded(
                        child: ListView.builder(
                          itemCount: serverResult2.length,
                          itemBuilder: (context, index) {
                            return newStoreContainer(serverResult2[index]);
                          },
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
            IgnorePointer(
              ignoring: _isLoadingFinish,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 600),
                opacity: !_isLoadingFinish ? 1.0 : 0.0,
                child: const TouristShimmer(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //리스트 뷸더
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
              Container(
                width: double.infinity,
                height: screenHeight * 0.125,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      const Color(0x0c000000).withOpacity(0.01),
                      const Color(0x0c000000).withOpacity(0.01),
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
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text:
                                                    store['market3'].toString(),
                                                style: const TextStyle(
                                                  color: Color(0xff111111),
                                                  fontSize: 16,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              WidgetSpan(
                                                child: SizedBox(
                                                    width: screenWidth * 0.012),
                                              ),
                                              const TextSpan(
                                                text: '서버에서 주세요~',
                                                style: TextStyle(
                                                  color: Color(0xff6fbf8a),
                                                  fontSize: 12,
                                                  fontFamily:
                                                      'PretendardSemiBold',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: screenWidth * 0.01),
                                  Row(
                                    children: [
                                      Text(
                                        '#${store['market1'][0].toString()}',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        '#${store['market1'][1].toString()}',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          color: Color(0xff5b5b5b),
                                          fontSize: 12,
                                          fontFamily: 'Pretendard',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenWidth * 0.009),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: const Text(
                                      '영업시간 서버에서 주세요!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xff393939),
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.009),
                                  const Divider(
                                    height: 1,
                                    color: Color(0xfff5f5f5),
                                  ),
                                  SizedBox(height: screenWidth * 0.013),
                                  SizedBox(
                                    width: screenWidth * 0.7,
                                    child: const Text(
                                      '리뷰 주세요!',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xfff64f4f),
                                        fontSize: 10,
                                        fontFamily: 'PretendardSemiBold',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenWidth * 0.02),
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
}

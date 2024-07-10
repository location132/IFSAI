import 'package:flutter/material.dart';
import 'package:my_dream/Page/6_search_results_page/search_screen_dio.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  List<Map<String, dynamic>> serverResult = [];

  @override
  void initState() {
    super.initState();
    searchResultGetDio();
  }

  void searchResultGetDio() async {
    serverResult = await searchResultData(keyword: '치킨');

    setState(() {});
  }

  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.041, right: screenWidth * 0.041),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.06,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFEEEEEE), width: 2),
                ),
              ),
              child: Row(
                children: [
                  // const Icon(
                  //   Icons.tune,
                  //   color: Color(0xff8e8e8e),
                  // ),
                  // const SizedBox(width: 10),
                  Container(
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffdbdbdb),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: DropdownButton<String>(
                        //padding: const EdgeInsets.only(top: 1, bottom: 2),
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
            ),
            //----------------------------------
            const SizedBox(height: 20),
            searchCard(),
            searchCard(),
            searchCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '원하는 업체가 없으신가요?',
                  style: TextStyle(
                    color: Color(0xff757575),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/PartnershipRequestScreen');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                color: Color(0xff757575),
                              )),
                            ),
                            child: const Text(
                              '파트너십 요청하러 가기',
                              style: TextStyle(
                                color: Color(0xff757575),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                              ),
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
    );
  }

  Widget searchCard() {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            shadows: const [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 6,
                offset: Offset(2, 0),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 6,
                offset: Offset(-2, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: const Color(0xffd9d9d9),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              '짱돌',
                              style: TextStyle(
                                color: Color(0xff111111),
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '현재 지점에서부터 3km',
                              style: TextStyle(
                                color: Color(0xff6fbf8a),
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '치킨.안주.주류',
                          style: TextStyle(
                            color: Color(0xff8e8e8e),
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '영업시간 : 17:00 ~ 01:00 ㅣ 매주 화요일 휴무',
                          style: TextStyle(
                            color: Color(0xff111111),
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                          ),
                        ),
                        SizedBox(height: 8),
                        Divider(
                          height: 1,
                          color: Color(0xfff5f5f5),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Color(0xff6fbf8a),
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '리뷰(95)',
                              style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 10,
                                fontFamily: 'Pretendard',
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '첫 구매 시 3,000원 할인 쿠폰 제공!',
                              style: TextStyle(
                                color: Color(0xfff64f4f),
                                fontSize: 10,
                                fontFamily: 'Pretendard',
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
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

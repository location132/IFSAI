import 'package:flutter/material.dart';
import 'package:my_dream/Page/6_search_results_page/search_screen_dio.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  List<Map<String, dynamic>> serverResult = [];
  String _searchText = '';
  String _newSearchText = '';

  @override
  void initState() {
    super.initState();
    searchResultGetDio();
  }

  void searchResultGetDio() async {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    _newSearchText = searchModel.isUserTextController;
    if (_searchText != _newSearchText) {
      print('서치값 다름 실행');
      _searchText = searchModel.isUserTextController;
      serverResult = await searchResultData(searchModel.isUserTextController);

      setState(() {});
    }
  }

  List<String> listItem = [" 최신순", " 인기순", " 거리순"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.041, right: screenWidth * 0.041),
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.06,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xfff5f5f5), width: 2),
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
          SizedBox(
            height: screenHeight * 0.006,
          ),
          SizedBox(
            height: screenHeight * 0.682,
            child: ListView.builder(
                itemCount: serverResult.length,
                itemBuilder: (context, index) {
                  return searchCard(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget searchCard(int index) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final subscreenWidth = screenWidth - screenWidth * 0.082;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.118,
            width: subscreenWidth * 0.99,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
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
                  SizedBox(
                      width: screenHeight * 0.118,
                      height: screenHeight * 0.118,
                      child: Image.network(
                        fit: BoxFit.cover,
                        serverResult[index]['image'].toString(),
                      )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                serverResult[index]['name'],
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff111111),
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: subscreenWidth * 0.02),
                              Flexible(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  '현재 지점으로 부터 ${serverResult[index]['distance'].toString()}',
                                  style: const TextStyle(
                                    color: Color(0xff6fbf8a),
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          Text(
                            serverResult[index]['description'],
                            style: const TextStyle(
                              color: Color(0xff8e8e8e),
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            '영업시간 : ${serverResult[index]['openTime'].substring(0, 5)} ~ ${serverResult[index]['closeTime'].substring(0, 5)} ㅣ 매주 화요일 휴무',
                            style: const TextStyle(
                              color: Color(0xff111111),
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Divider(
                            height: 1,
                            color: Color(0xfff5f5f5),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 18,
                                color: Color(0xff6fbf8a),
                              ),
                              Text(
                                serverResult[index]['reviewScore']
                                    .toStringAsFixed(1),
                                style: const TextStyle(
                                  color: Color(0xff111111),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '리뷰(${serverResult[index]['reviewCount']})',
                                style: const TextStyle(
                                  color: Color(0xff111111),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  serverResult[index]['eventMessage'],
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Color(0xfff64f4f),
                                    fontSize: 11,
                                    fontFamily: 'Pretendard',
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
          ),
          (index == serverResult.length - 1)
              ? Row(
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
                        Navigator.pushNamed(
                            context, '/PartnershipRequestScreen');
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
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

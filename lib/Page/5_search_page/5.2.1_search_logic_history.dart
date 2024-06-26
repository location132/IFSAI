import 'package:flutter/material.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class SearchLogicHistory extends StatefulWidget {
  const SearchLogicHistory({super.key});

  @override
  State<SearchLogicHistory> createState() => _SearchLogicHistoryState();
}

class _SearchLogicHistoryState extends State<SearchLogicHistory> {
  PreferencesSearchHistory preferencesSearchHistory =
      PreferencesSearchHistory();
  bool _showAll = false;
  double _historyOpacity = 1.0;
  bool _isFirstSearchBar = true;
  bool _hasThreeOrMoreRecentSearches = false;
  bool _isRemoveSate = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _isFirstSearchBar = false;
  }

// 검색기록 보여주기
  Future<List<Map<String, dynamic>>> getSearchHistory() async {
    bool loginState =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    if (loginState) {
      return [];
    } else {
      List<String> history =
          await preferencesSearchHistory.getSearchHistory() ?? [];
      List<Map<String, String>> searchHistory = history.reversed
          .map((item) => {"content": item, "historyId": ""})
          .toList();

      if (!_showAll) {
        searchHistory = searchHistory.take(3).toList(); // 최대 3개만 보여주기
        setState(() {
          _hasThreeOrMoreRecentSearches = history.length >= 4;
        });
      } else {
        searchHistory = searchHistory.take(10).toList(); // 최대 10개 보여주기
      }
      return searchHistory;
    }
  }

  // 검삭기록 삭제하기
  void removeHistory(String searchItem) async {
    setState(() {
      _historyOpacity = 0.0;
    });
    await Future.delayed(const Duration(milliseconds: 299), () async {
      preferencesSearchHistory.removeSearchHistory(searchItem);
    });

    List<String> history =
        await preferencesSearchHistory.getSearchHistory() ?? [];
    _hasThreeOrMoreRecentSearches = history.length >= 4;

    setState(() {
      _historyOpacity = 1.0;
    });
  }

// 검색기록 모두 삭제하기
  void removeAllHistory() async {
    final searchStatus = Provider.of<SearchBarModel>(context, listen: false);

    setState(() {
      _historyOpacity = 0.0;
    });

    await Future.delayed(const Duration(milliseconds: 300), () async {
      bool loginStatus =
          Provider.of<LoginModel>(context, listen: false).loginStatus;

      if (loginStatus) {
      } else {
        var localResult = await preferencesSearchHistory.getSearchHistory();
        if (localResult != null && localResult.isNotEmpty) {
          preferencesSearchHistory.removeAllHistory();
        }
      }
      setState(() {
        _historyOpacity = 1.0; // 다시 보이게 만들고, 필요하면 검색 기록 없음 메시지 표시
        _showAll = false;
        searchStatus.setRemoveSearchHistory(false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginModel = Provider.of<LoginModel>(context, listen: false);
    final screenWidth = MediaQuery.of(context).size.width;
    final searchStatus = Provider.of<SearchBarModel>(context);

    if (searchStatus.isRemoveSearchHistory && _isRemoveSate) {
      _isRemoveSate = false;
      removeAllHistory();
    }

    return Column(
      children: [
        AnimatedOpacity(
          opacity: _historyOpacity,
          duration: const Duration(milliseconds: 300), // 0.7초 동안 애니메이션 실행
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: getSearchHistory(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting &&
                  _isFirstSearchBar) {
                return const SizedBox();
              } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                return Column(
                  children: snapshot.data!
                      .map((item) => Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    final searchControllerModel =
                                        Provider.of<SearchBarModel>(context,
                                            listen: false);
                                    searchControllerModel
                                        .setSearchController(item['content']);
                                  },
                                  child: SizedBox(
                                    width: screenWidth * 0.65,
                                    child: Text(
                                      item['content'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Color(0xff393939),
                                        fontFamily: 'Pretendard',
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: IconButton(
                                      onPressed: () {
                                        bool loginstate =
                                            loginModel.loginStatus;
                                        if (loginstate) {
                                        } else {
                                          removeHistory(item["content"]);
                                        }
                                      },
                                      padding: EdgeInsets.zero,
                                      icon: const Icon(
                                        Icons.close,
                                        color: Color(0xffc1c1c1),
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                );
              } else {
                return const Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      '최근 검색 기록이 없습니다.',
                      style: TextStyle(
                        color: Color(0xff111111),
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                );
              }
            },
          ),
        ),
        Visibility(
          visible: _hasThreeOrMoreRecentSearches,
          child: InkWell(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            onTap: () {
              if (!_showAll) {
                setState(() {
                  _showAll = true;
                });
              } else {
                setState(() {
                  _showAll = false;
                });
              }
            },
            child: !_showAll
                ? const Text(
                    '최근 검색기록 더보기',
                    style: TextStyle(
                      color: Color(0xff6fbf8a),
                      fontFamily: 'Pretendard',
                    ),
                  )
                : const Text(
                    '최근 검색기록 닫기',
                    style: TextStyle(
                      color: Color(0xff6fbf8a),
                      fontFamily: 'Pretendard',
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

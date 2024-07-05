import 'package:flutter/material.dart';
import 'package:my_dream/Page/5_search_page/search_dio/search_screen_dio.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class MainSearchBarScreen extends StatefulWidget {
  final Function(bool) searchScreen;
  const MainSearchBarScreen({super.key, required this.searchScreen});

  @override
  State<MainSearchBarScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainSearchBarScreen> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textController = TextEditingController();

  PreferencesSearchHistory preferencesSearchHistory =
      PreferencesSearchHistory();
  bool _showNotificationIcon = true;
  String _saveSearchController = '';
  List<Map<String, dynamic>> searchDio = [];

// 메인화면에서 서치바 클릭 시
  void _toggleBottomSheet() async {
    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);

    if (searchModelStatus.isresultSearchAni) {
      final searchModel = Provider.of<SearchBarModel>(context, listen: false);
      searchModel.setFirstTabStatus(false); // 검색창 2번클릭해, 검색어 입력
      widget.searchScreen(true);
      setState(() {
        _showNotificationIcon = false;
      });
      await Future.delayed(const Duration(milliseconds: 450), () {
        FocusScope.of(context).requestFocus(_focusNode);
      });
    }
  }

  // 최근 검색어 저장,
  void isSearchHistory(String searchHistory) async {
    String trimmedSearchHistory = searchHistory.trim();

    try {
      bool isLoginStatus =
          Provider.of<LoginModel>(context, listen: false).loginStatus;
      if (isLoginStatus) {
        await userHistory(trimmedSearchHistory); //검색 히스토리 추가 [로그인]
        await postPopularSearches(trimmedSearchHistory); // 인기검색어 추가
      } else {
        if (trimmedSearchHistory.isNotEmpty) {
          List<String> historyMatch =
              await preferencesSearchHistory.getSearchHistory() ?? [];
          if (!historyMatch.contains(trimmedSearchHistory)) {
            await preferencesSearchHistory
                .setSearchHistory(trimmedSearchHistory);
          }
        }
      }
      _closeSearchScreen();
    } catch (e) {}
  }

// 사용자 검색 완료 => 검색창 종료
  void _closeSearchScreen() async {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    searchModel.setSearchController('');
    widget.searchScreen(false);
    searchModel.setSearchScreenStaus(false);
    searchModel.setFirstTabStatus(true);
    await Future.delayed(const Duration(milliseconds: 120));
    searchModel.setSearchResultsScreen(true);
    await getDioSearchValue();
  }

  Future<void> getDioSearchValue() async {
    print('검색기록 불러오기');
    bool loginState =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    final searchScreenStatus =
        Provider.of<SearchScreenModel>(context, listen: false);
    if (loginState) {
      // 검색 히스토리 불러오기
      searchDio = await recentSearch();
      searchScreenStatus.setStartSearch(searchDio);
      //인기검색어 불러오기
      searchDio = await popularSearches();
      searchScreenStatus.setPopularSearches(searchDio);
      // 추천 검색어 불러오기
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchBarModel>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    if (searchModel.isFirstTab == true && !_showNotificationIcon) {
      Future.delayed(const Duration(milliseconds: 350), () {
        setState(() {
          _showNotificationIcon = true;
        });
      });
    }

    if (mounted) {
      if (searchModel.isUserTextController.isNotEmpty) {
        _textController.text = searchModel.isUserTextController;
        _saveSearchController = _textController.text;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          isSearchHistory(_saveSearchController);
        });
      }

      if (!searchModel.isSearchResultsScreen) {
        setState(() {
          _textController.text = '';
        });
      } else {
        setState(() {
          _textController.text = _saveSearchController;
        });
      }
    }

    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: 40,
                width: searchModel.isFirstTab
                    ? screenWidth * 0.823
                    : screenWidth * 1,
                child: TextFormField(
                  enabled: !searchModel.isFirstTab,
                  focusNode: _focusNode,
                  controller: _textController,
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
                        color: Color(0xffc1c1c1), fontFamily: 'Pretendard'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    _saveSearchController = value;
                    _textController.text = value;
                    isSearchHistory(_textController.text);
                  },
                ),
              ),
              if (searchModel.isFirstTab)
                SizedBox(
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                      _toggleBottomSheet();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Container(),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        AnimatedOpacity(
          opacity: _showNotificationIcon ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: Visibility(
            visible: _showNotificationIcon,
            child: const Icon(
              Icons.notifications_none,
              color: Color(0xff6fbf8a),
              size: 32,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}

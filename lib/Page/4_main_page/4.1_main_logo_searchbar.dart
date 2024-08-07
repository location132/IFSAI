import 'package:flutter/material.dart';
import 'package:my_dream/Page/5_search_page/search_dio/search_screen_dio.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';
import 'package:my_dream/coreService/Dialog/login_dialog.dart';

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
  String? _profileImageUrl;
  String _inputText = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final searchModel = Provider.of<SearchBarModel>(context, listen: false);
      searchModel.addListener(_updateTextController);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final searchModel = Provider.of<SearchBarModel>(context);
    if (searchModel.isFirstTab == true && !_showNotificationIcon) {
      if (mounted) {
        setState(() {
          _showNotificationIcon = true;
        });
      }
    }

    if (!searchModel.isSearchResultsScreen) {
      _textController.text = '';
    } else {
      _textController.text = _saveSearchController;
    }
  }

  void _updateTextController() {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    if (searchModel.isUserTextController.isNotEmpty) {
      setState(() {
        _textController.text = searchModel.isUserTextController;
        _saveSearchController = searchModel.isUserTextController;
      });
    }
  }

  @override
  void dispose() {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    searchModel.removeListener(_updateTextController);
    _focusNode.dispose();
    super.dispose();
  }

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
    final searchControllerModel =
        Provider.of<SearchBarModel>(context, listen: false);
    searchControllerModel.setSearchController(trimmedSearchHistory);
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
    widget.searchScreen(false);
    searchModel.setSearchScreenStaus(false);
    searchModel.setFirstTabStatus(true);
    await Future.delayed(const Duration(milliseconds: 120));
    searchModel.setSearchResultsScreen(true);
    await getDioSearchValue();
  }

  // Dialog, 유저 미로그인상태, 로그인 필요한 페이지 접근 시도시 발생(noti, cart)
  void handleLogin() {
    final loginStatus = Provider.of<LoginModel>(context, listen: false);
    if (!loginStatus.loginStatus) {
      showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.black.withOpacity(0.5),
        builder: (BuildContext context) {
          return const LoginDialog();
        },
      );
    }
  }

  Future<void> getDioSearchValue() async {
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

  //연관검색어
  void updateSearchScreenState() {
    final searchModel = Provider.of<SearchBarModel2>(context, listen: false);
    searchModel.setUserInputForRelatedSearch(_inputText);
  }

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    final screenWidth = MediaQuery.of(context).size.width;
    final loginStatus = Provider.of<LoginModel>(context, listen: false);
    return Row(
      children: [
        loginStatus.loginStatus
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
                width: searchModel.isFirstTab ? 56 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: searchModel.isFirstTab ? 1.0 : 0.0,
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                          shape: BoxShape.circle,
                        ),
                        child: (_profileImageUrl == null ||
                                _profileImageUrl.toString().isEmpty)
                            ? const Icon(
                                Icons.person,
                                size: 32,
                                color: Colors.white,
                              )
                            : Image.network(_profileImageUrl!),
                      )
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        Expanded(
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
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
                  onChanged: (value) {
                    _inputText = value.trim();
                    updateSearchScreenState();
                  },
                  onFieldSubmitted: (value) {
                    _saveSearchController = value;
                    _textController.text = value;
                    isSearchHistory(_textController.text);
                  },
                ),
              ),
              if (searchModel.isFirstTab)
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: searchModel.isFirstTab ? 1.0 : 0.0,
                  child: SizedBox(
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
                ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: _showNotificationIcon ? 1.0 : 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: _showNotificationIcon ? 32 : 0,
            child: AnimatedOpacity(
              opacity: _showNotificationIcon ? 1 : 0,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              child: InkWell(
                onTap: () {
                  if (loginStatus.loginStatus) {
                    // 로그인 후 로직
                  } else {
                    handleLogin();
                  }
                },
                child: const Icon(
                  Icons.notifications_none,
                  color: Color(0xff6fbf8a),
                  size: 32,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: _showNotificationIcon ? 1.0 : 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: _showNotificationIcon ? 32 : 0,
            child: AnimatedOpacity(
              opacity: _showNotificationIcon ? 1 : 0,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              child: InkWell(
                onTap: () {
                  if (loginStatus.loginStatus) {
                    // 로그인 후 로직
                  } else {
                    handleLogin();
                  }
                },
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xff6fbf8a),
                  size: 32,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

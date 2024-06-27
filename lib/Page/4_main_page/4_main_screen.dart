import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_dream/coreService/login_dio.dart';
import 'package:my_dream/Page/4_main_page/4.5_main_new_store.dart';
import 'package:my_dream/Page/4_main_page/4.6_main_best_review.dart';
import 'package:my_dream/Page/4_main_page/4.7_main_hot_promotion.dart';
import 'package:my_dream/Page/4_main_page/4.8_main_featured_stores.dart';
import 'package:my_dream/Page/4_main_page/4.9_main_tourist_attractions.dart';
import 'package:my_dream/Page/5_search_page/5.1.1_searcscreen.dart';
import 'package:my_dream/Page/4_main_page/4.1_main_logo_searchbar.dart';
import 'package:my_dream/Page/4_main_page/4.2_main_adBanner.dart';
import 'package:my_dream/Page/4_main_page/4.3_main_category.dart';
import 'package:my_dream/Page/4_main_page/4.4_main_top12.dart';
import 'package:my_dream/Page/6_search_results_page/6_search_results_screen.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
//스크롤 감지 ---
  final ScrollController _scrollController = ScrollController();

  bool _isSearchBarMove = false; // 서치바 (aniContaninal)
  bool _isSearchBarAni = false; // 서치바 (opacity)
  bool _isFirstSearchbarEntry = true; // 서치바 애니메이션 최초 1회 감지

  bool _isLogoMove = false; // 로고 (aniContaninal)
  bool _isLogoAni = false; // 로고 (opacity)
  bool _isFirstLogoEntry = true; // 로고 애니메이션 최초 1회 감지

// ---------

  OverlayEntry? _overlayEntry;

  void _scrollListener() {
    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);

    if (!searchModelStatus.isSearchResultsScreen) {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        // 서치바 없어지는 애니메이션
        if (_scrollController.offset > 10 && _isFirstSearchbarEntry) {
          upScreenSearchBar();
        }
        // 로고 없어지는 애니메이션
        if (_scrollController.offset > 30 && _isFirstLogoEntry) {
          upScreenLogo();
        }
      } else {
        // 서치바 다시 나타나는 애니메이션
        if (!_isFirstSearchbarEntry) {
          downScreenSearchBar();
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(_scrollListener);
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener); // 리스너 제거
    _scrollController.dispose();
    super.dispose();
  }

//사용자가 화면을 아래로 스크롤 시, 로고 애니메이션
  void upScreenLogo() {
    setState(() {
      // 제어 장치
      _isFirstLogoEntry = false;

      _isLogoMove = true;
      _isLogoAni = true;
    });
  }

//사용자가 화면을 아래로 스크롤 시, 서치바 애니메이션
  void upScreenSearchBar() {
    setState(() {
      // 제어 장치
      _isFirstSearchbarEntry = false;

      _isSearchBarMove = true;
      _isSearchBarAni = true;
    });
  }

  // 사용자가 화면을 위로 스크롤 시, 서치바 나오기
  void downScreenSearchBar() {
    setState(() {
      _isSearchBarMove = false;
      _isSearchBarAni = false;
      _isLogoMove = false;
      _isLogoAni = false;

      _isFirstSearchbarEntry = true;
      _isFirstLogoEntry = true;
    });
  }

  // 화면 제일 위로 올리기
  void _jumpToTop() {
    _scrollController.jumpTo(0); // 즉시 최상단으로 스크롤
  }

// -----------검색 창 화면 나오기 --------------------------
  void toggleSearchScreen(bool isSearchScreen) {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);

    if (isSearchScreen) {
      searchModel.setSearchScreenStaus(true);
      _overlayEntry = OverlayEntry(
        builder: (context) {
          return MainSearcscreen(onClose: _removeOverlayEntry);
        },
      );
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

// 뒤로가기 아이콘 검색창 닫기
  void _isIconButton({int retry = 0}) async {
    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);

    if (searchModelStatus.isresultSearchAni) {
      if (searchModelStatus.isSearchScreen) {
        _closeSearchScreen();
      } else if (searchModelStatus.isSearchResultsScreen &&
          !searchModelStatus.isSearchScreen) {
        searchModelStatus.setSearchResultsScreen(false);
      }
    } else {
      await Future.delayed(const Duration(milliseconds: 410));
      if (searchModelStatus.isresultSearchAni) {
        if (searchModelStatus.isSearchScreen) {
          _closeSearchScreen();
        } else if (searchModelStatus.isSearchResultsScreen &&
            !searchModelStatus.isSearchScreen) {
          searchModelStatus.setSearchResultsScreen(false);
        }
      } else {
        if (retry == 0) {
          return _isIconButton(retry: 1);
        }
      }
    }
  }

  void _closeSearchScreen() {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    searchModel.setSearchScreenStaus(false);
    searchModel.setFirstTabStatus(true);
  }

  void _removeOverlayEntry() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  //-----------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final searchModelStatus = Provider.of<SearchBarModel>(context);

    return PopScope(
      canPop: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 360),
                      margin: EdgeInsets.only(
                          top: _isFirstSearchbarEntry
                              ? screenHeight * 0.125
                              : _isFirstLogoEntry
                                  ? screenHeight * 0.04
                                  : screenHeight * 0.0),
                      child: const SizedBox(),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: IgnorePointer(
                          ignoring: searchModelStatus
                              .isSearchResultsScreen, // 검색 결과 화면이 활성화되면 메인 화면의 입력을 무시
                          child: AnimatedOpacity(
                            opacity:
                                searchModelStatus.isSearchResultsScreen ? 0 : 1,
                            duration: const Duration(milliseconds: 450),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.041,
                                      right: screenWidth * 0.041),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Column(
                                            children: [
                                              const MainAddBannerScreen(),
                                              SizedBox(
                                                  height:
                                                      screenHeight * 0.0235),
                                              const MainCategory(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.0352),
                                const MainNewStore(),
                                const SizedBox(height: 25),
                                const MainTop12(),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.041,
                                      right: screenWidth * 0.041),
                                  child: Column(
                                    children: [
                                      SizedBox(height: screenHeight * 0.0352),
                                      const MainHotPromotion(),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                const MainBestReview(),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.041,
                                      right: screenWidth * 0.041),
                                  child: Column(
                                    children: [
                                      SizedBox(height: screenHeight * 0.0352),
                                      const MainTouristAttractions(),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                const MainFeaturedStores(),
                                const SizedBox(
                                  height: 70,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // 검색 결과 화면으로 전환
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: IgnorePointer(
                    ignoring: !searchModelStatus
                        .isSearchResultsScreen, // 검색 결과 화면이 활성화되면 메인 화면의 입력을 무시
                    child: AnimatedOpacity(
                      opacity: searchModelStatus.isSearchResultsScreen ? 1 : 0,
                      duration: const Duration(milliseconds: 450),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: _isFirstSearchbarEntry
                                    ? screenHeight * 0.125
                                    : _isFirstLogoEntry
                                        ? screenHeight * 0.04
                                        : screenHeight * 0.0),
                            child: const SizedBox(),
                          ),
                          const SearchResultsScreen(),
                        ],
                      ),
                    ),
                  ),
                ),

                // 로고와 검색창 시작
                Positioned(
                  top: -20,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.041, right: screenWidth * 0.041),
                    child: Column(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 360),
                          margin: EdgeInsets.only(top: _isLogoMove ? 0 : 20),
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 210),
                            opacity: _isLogoAni ? 0.0 : 1.0,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 5),
                                  child: AnimatedOpacity(
                                    opacity: searchModelStatus.isSearchScreen ||
                                            searchModelStatus
                                                .isSearchResultsScreen
                                        ? 1
                                        : 0,
                                    duration: const Duration(milliseconds: 210),
                                    child: IgnorePointer(
                                      ignoring:
                                          !(searchModelStatus.isSearchScreen ||
                                              searchModelStatus
                                                  .isSearchResultsScreen),
                                      child: SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: IconButton(
                                          icon: const Icon(
                                              Icons.arrow_back_ios_rounded,
                                              size: 24),
                                          onPressed: () {
                                            _isIconButton();
                                          },
                                          style: TextButton.styleFrom(
                                            splashFactory:
                                                NoSplash.splashFactory,
                                          ),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.3 - 2),
                                IgnorePointer(
                                  ignoring: _isLogoAni,
                                  child: InkWell(
                                    splashFactory: NoSplash.splashFactory,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      searchModelStatus
                                          .setSearchResultsScreen(false);
                                    },
                                    child: SizedBox(
                                      height: 25,
                                      width: 70,
                                      child: Image.asset(
                                        'assets/images/ifSaiLogo.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                ////------------------------
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.041, right: screenWidth * 0.041),
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.035),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 210),
                          margin:
                              EdgeInsets.only(top: _isSearchBarMove ? 0 : 20),
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 210),
                            opacity: _isSearchBarAni ? 0.0 : 1.0,
                            child: IgnorePointer(
                              ignoring: _isSearchBarAni,
                              child: MainSearchBarScreen(
                                  searchScreen: toggleSearchScreen),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //-------------------------
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: IgnorePointer(
                    ignoring: searchModelStatus
                        .isSearchResultsScreen, // 검색 결과 화면이 활성화되면 메인 화면의 입력을 무시
                    child: AnimatedOpacity(
                      opacity: searchModelStatus.isSearchResultsScreen ? 0 : 1,
                      duration: const Duration(milliseconds: 450),
                      child: SizedBox(
                        height: 56, //screenHeight * 0.066,
                        width: double.infinity,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 8,
                                offset: Offset(0, -2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              const Spacer(),
                              const Icon(
                                Icons.home_filled,
                                size: 32,
                                color: Color(0xff6fbf8a),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.location_on_rounded,
                                size: 32,
                                color: Color(0xffc1c1c1),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.add_box_outlined,
                                size: 32,
                                color: Color(0xffc1c1c1),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  print('로그아웃 임시');
                                  ifsaiLogout();

                                  Navigator.pushNamed(context, '/StartPage');
                                },
                                child: const Icon(
                                  Icons.person_outline,
                                  size: 32,
                                  color: Color(0xffc1c1c1),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
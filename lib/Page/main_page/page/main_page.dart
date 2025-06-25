import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_dream/Page/2_login_page/login_dio/login_dio.dart';
import 'package:my_dream/Page/4_main_page/widget/4.0_main_page.dart';
import 'package:my_dream/Page/4_main_page/page/main_cubit.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/6_search_results_page/6_search_results_screen.dart';
import 'package:my_dream/Page/4_main_page/widget/4.1_main_logo_searchbar.dart';
import 'package:my_dream/coreService/Shimmer_loading/main_shimmer.dart';
import 'package:my_dream/coreService/core/di/injector.dart';
import 'package:my_dream/coreService/core/dio/dio_interceptor_cache.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/coreService/widget/bottom_navigation.dart';
import 'package:provider/provider.dart';

class MainPageWrapper extends StatelessWidget {
  const MainPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<MainCubit>(),
      child: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  MainCubit get _cubit => context.read<MainCubit>();

  void _scrollListener() {
    _cubit.scrollListener(context, _scrollController);
  }

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    if (mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.addListener(_scrollListener);
        _cubit.getDioSearchValue(context);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _jumpToTop() {
    _cubit.jumpToTop();
    _scrollController.jumpTo(0);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final searchModelStatus = Provider.of<SearchBarModel>(context);

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Stack(
            children: [
              Scaffold(
                resizeToAvoidBottomInset: false,
                body: SafeArea(
                  child: Center(
                    child: Stack(
                      children: [
                        IgnorePointer(
                          ignoring: !state.isLoadFinish,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 420),
                            opacity: state.isLoadFinish ? 1.0 : 0.0,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 360),
                                      margin: EdgeInsets.only(
                                          top: state.isFirstSearchbarEntry
                                              ? screenHeight * 0.125
                                              : state.isFirstLogoEntry
                                                  ? screenHeight * 0.04
                                                  : screenHeight * 0.0),
                                      child: const SizedBox(),
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        controller: _scrollController,
                                        child: IgnorePointer(
                                          ignoring: searchModelStatus
                                              .isSearchResultsScreen,
                                          child: AnimatedOpacity(
                                            opacity: searchModelStatus
                                                    .isSearchResultsScreen
                                                ? 0
                                                : 1,
                                            duration: const Duration(
                                                milliseconds: 450),
                                            child: MainPage(
                                              onLoadingComplete:
                                                  (bool isLoadingComplete) {
                                                final loginStatus =
                                                    Provider.of<LoginModel>(
                                                            context,
                                                            listen: false)
                                                        .loginStatus;
                                                _cubit.incrementFinishCount(
                                                    loginStatus);
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: IgnorePointer(
                                    ignoring: !searchModelStatus
                                        .isSearchResultsScreen,
                                    child: AnimatedOpacity(
                                      opacity: searchModelStatus
                                              .isSearchResultsScreen
                                          ? 1
                                          : 0,
                                      duration:
                                          const Duration(milliseconds: 450),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: state.isFirstSearchbarEntry
                                                    ? screenHeight * 0.125
                                                    : state.isFirstLogoEntry
                                                        ? screenHeight * 0.04
                                                        : screenHeight * 0.0),
                                            child: const SizedBox(),
                                          ),
                                          Visibility(
                                            visible: searchModelStatus
                                                .isSearchResultsScreen,
                                            maintainState: searchModelStatus
                                                .isSearchResultsScreen,
                                            child: const SearchResultsScreen(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -20,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.041,
                                        right: screenWidth * 0.041),
                                    child: Column(
                                      children: [
                                        AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 360),
                                          margin: EdgeInsets.only(
                                              top: state.isLogoMove ? 0 : 20),
                                          child: AnimatedOpacity(
                                            duration: const Duration(
                                                milliseconds: 210),
                                            opacity:
                                                state.isLogoAni ? 0.0 : 1.0,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, left: 5),
                                                  child: AnimatedOpacity(
                                                    opacity: searchModelStatus
                                                                .isSearchScreen ||
                                                            searchModelStatus
                                                                .isSearchResultsScreen
                                                        ? 1
                                                        : 0,
                                                    duration: const Duration(
                                                        milliseconds: 210),
                                                    child: IgnorePointer(
                                                      ignoring: !(searchModelStatus
                                                              .isSearchScreen ||
                                                          searchModelStatus
                                                              .isSearchResultsScreen),
                                                      child: SizedBox(
                                                        height: 24,
                                                        width: 24,
                                                        child: IconButton(
                                                          icon: const Icon(
                                                              Icons
                                                                  .arrow_back_ios_rounded,
                                                              size: 24),
                                                          onPressed: () {
                                                            _cubit.isIconButton(
                                                                context);
                                                          },
                                                          style: TextButton
                                                              .styleFrom(
                                                            splashFactory: NoSplash
                                                                .splashFactory,
                                                          ),
                                                          padding:
                                                              EdgeInsets.zero,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: screenWidth * 0.295),
                                                IgnorePointer(
                                                  ignoring: state.isLogoAni,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () {
                                                      searchModelStatus
                                                          .setSearchResultsScreen(
                                                              false);
                                                    },
                                                    child: Center(
                                                      child: SizedBox(
                                                        height: 25,
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await clearAllMemoryCache();
                                                            ifsaiLogout();
                                                            if (mounted) {
                                                              Provider.of<SearchBarModel>(
                                                                      context,
                                                                      listen:
                                                                          false)
                                                                  .setFirstTabStatus(
                                                                      true);

                                                              final loginModelStatus =
                                                                  Provider.of<
                                                                          LoginModel>(
                                                                      context,
                                                                      listen:
                                                                          false);
                                                              final joinModelStatus =
                                                                  Provider.of<
                                                                          JoinModel>(
                                                                      context,
                                                                      listen:
                                                                          false);

                                                              loginModelStatus
                                                                  .setloginStatus(
                                                                      false);
                                                              loginModelStatus
                                                                  .setBasketCount(
                                                                      0);
                                                              joinModelStatus
                                                                  .setIsFirstClickSNSLogin(
                                                                      true);
                                                              loginModelStatus
                                                                  .setOnProfileImageReceived(
                                                                      '');
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/StartPage');
                                                            }
                                                          },
                                                          child: Image.asset(
                                                            'assets/images/ifSaiLogo.png',
                                                            width: 70,
                                                            cacheWidth: (70 *
                                                                    MediaQuery.of(
                                                                            context)
                                                                        .devicePixelRatio)
                                                                .round(),
                                                          ),
                                                        ),
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
                                Positioned(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: screenWidth * 0.041,
                                      right: screenWidth * 0.041,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: screenHeight * 0.035),
                                        AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 210),
                                          margin: EdgeInsets.only(
                                              top: state.isSearchBarMove
                                                  ? 0
                                                  : 20),
                                          child: AnimatedOpacity(
                                            duration: const Duration(
                                                milliseconds: 210),
                                            opacity: state.isSearchBarAni
                                                ? 0.0
                                                : 1.0,
                                            child: IgnorePointer(
                                              ignoring: state.isSearchBarAni,
                                              child: MainSearchBarScreen(
                                                  searchScreen: (bool
                                                          isSearchScreen) =>
                                                      _cubit.toggleSearchScreen(
                                                          context,
                                                          isSearchScreen)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: BottomNavigation(
                                    toggleLoadAndScreenChange:
                                        _cubit.toggleLoadAndScreenChange,
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  bottom: 70,
                                  child: Visibility(
                                    visible: state.isScreenChange,
                                    child: IgnorePointer(
                                      ignoring: !state.jumpScreen,
                                      child: AnimatedOpacity(
                                        opacity: state.jumpScreen ? 1.0 : 0.0,
                                        duration:
                                            const Duration(milliseconds: 400),
                                        child: FloatingActionButton(
                                          heroTag: "fab2",
                                          onPressed: _jumpToTop,
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.black,
                                          shape: const CircleBorder(),
                                          child: const Icon(
                                            Icons.arrow_upward,
                                            size: 32,
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
                        IgnorePointer(
                          ignoring: state.isLoadFinish,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 420),
                            opacity: !state.isLoadFinish && state.isScreenChange
                                ? 1.0
                                : 0.0,
                            child: const MainShimmer(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ignore_for_file: unused_local_variable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_dream/Page/4_main_page/page/main_state.dart';
import 'package:my_dream/Page/5_search_page/page/search_page.dart';
import 'package:my_dream/repository/main_screen_api/main_screen_remote_service.dart';
import 'package:my_dream/repository/search_api/search_remote_service.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';
import 'package:my_dream/coreService/provider.dart';
import 'package:my_dream/model/market.dart';

import 'package:provider/provider.dart';

@injectable
class MainCubit extends Cubit<MainState> {
  final MainScreenRemoteService _mainScreenRemoteService;
  final SearchRemoteService _searchRemoteService;

  MainCubit(this._mainScreenRemoteService, this._searchRemoteService)
      : super(const MainState());

  void upScreenLogo() {
    emit(state.copyWith(
      isFirstLogoEntry: false,
      isLogoMove: true,
      isLogoAni: true,
      jumpScreen: true,
    ));
  }

  void upScreenSearchBar() {
    emit(state.copyWith(
      isFirstSearchbarEntry: false,
      isSearchBarMove: true,
      isSearchBarAni: true,
    ));
  }

  void downScreenSearchBar() {
    emit(state.copyWith(
      isSearchBarMove: false,
      isSearchBarAni: false,
      isLogoMove: false,
      isLogoAni: false,
      jumpScreen: false,
      isFirstSearchbarEntry: true,
      isFirstLogoEntry: true,
      lastSearchBarAppearance: DateTime.now(),
    ));
  }

  void jumpToTop() {
    emit(state.copyWith(jumpScreen: false));
    downScreenSearchBar();
  }

  void _isMainLoadingComplete() {
    emit(state.copyWith(isLoadFinish: true));
  }

  void incrementFinishCount(bool loginStatus) {
    final newFinishCount = state.finishCount + 1;
    emit(state.copyWith(finishCount: newFinishCount));

    int finishRequired = loginStatus ? 2 : 1;
    if (newFinishCount == finishRequired) {
      _isMainLoadingComplete();
    }
  }

  void toggleLoadAndScreenChange() {
    emit(state.copyWith(
      isLoadFinish: !state.isLoadFinish,
      isScreenChange: !state.isScreenChange,
    ));
  }

  void updateScrollPosition(double position) {
    emit(state.copyWith(
      lastScrollPosition: position,
      lastScrollTime: DateTime.now(),
    ));
  }

  void scrollListener(BuildContext context, ScrollController scrollController) {
    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);

    if (!searchModelStatus.isSearchResultsScreen) {
      final now = DateTime.now();
      final scrollDelta = scrollController.offset - state.lastScrollPosition;
      final timeDelta =
          now.difference(state.lastScrollTime ?? now).inMilliseconds;

      final scrollSpeed = timeDelta > 0 ? scrollDelta.abs() / timeDelta : 0;

      bool canHideSearchBar = state.lastSearchBarAppearance == null ||
          now.difference(state.lastSearchBarAppearance!).inMilliseconds >= 700;

      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (scrollController.offset > 10 &&
            state.isFirstSearchbarEntry &&
            canHideSearchBar &&
            !searchModelStatus.isSearchScreen) {
          upScreenSearchBar();
        }
        if (scrollController.offset > 30 &&
            state.isFirstLogoEntry &&
            canHideSearchBar &&
            !searchModelStatus.isSearchScreen) {
          upScreenLogo();
        }
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!state.isFirstSearchbarEntry &&
            (scrollSpeed > 1.3 || scrollController.offset < 30)) {
          downScreenSearchBar();
        }
      }

      updateScrollPosition(scrollController.offset);
    }
  }

  Future<void> getDioSearchValue(BuildContext context) async {
    if (!context.mounted) return;

    final loginStatus =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    final searchScreenStatus =
        Provider.of<SearchScreenModel>(context, listen: false);

    if (loginStatus) {
      // SearchRemoteService를 통해 검색 기록과 인기 검색어 가져오기
      final searchHistory = await _searchRemoteService.getSearchHistory();
      final popularSearches = await _searchRemoteService.getPopularSearches();

      if (context.mounted) {
        // 기존 Provider 설정 (추후 리팩토링 예정)
        searchScreenStatus.setStartSearch(searchHistory
            .map((e) => {
                  'content': e.content,
                  'historyId': e.historyId,
                })
            .toList());
        searchScreenStatus.setPopularSearches(popularSearches
            .map((e) => {
                  'value0': e.searchWord,
                  'value1': e.rankChangeValue,
                })
            .toList());

        // State에 모델 타입으로 저장
        emit(state.copyWith(
          searchHistory: searchHistory,
          popularSearches: popularSearches,
        ));
      }
    }

    incrementFinishCount(loginStatus);
  }

  void toggleSearchScreen(BuildContext context, bool isSearchScreen) {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);

    if (isSearchScreen) {
      downScreenSearchBar();
      searchModel.setSearchScreenStaus(true);

      final overlayEntry = OverlayEntry(
        builder: (context) {
          return MainSearcscreen(onClose: () => removeOverlayEntry());
        },
      );

      emit(state.copyWith(overlayEntry: overlayEntry));
      Overlay.of(context).insert(overlayEntry);
    }
  }

  Future<void> isIconButton(BuildContext context, {int retry = 0}) async {
    if (!context.mounted) return;

    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);
    final searchScreenStatus =
        Provider.of<SearchScreenModel>(context, listen: false);

    if (searchModelStatus.isresultSearchAni) {
      if (searchModelStatus.isSearchScreen) {
        closeSearchScreen(context);
        final popularSearches = await _searchRemoteService.getPopularSearches();
        if (context.mounted) {
          searchScreenStatus.setPopularSearches(popularSearches
              .map((e) => {
                    'value0': e.searchWord,
                    'value1': e.rankChangeValue,
                  })
              .toList());
          emit(state.copyWith(popularSearches: popularSearches));
        }
      } else if (searchModelStatus.isSearchResultsScreen &&
          !searchModelStatus.isSearchScreen) {
        searchModelStatus.setSearchResultsScreen(false);
      }
    } else {
      await Future.delayed(const Duration(milliseconds: 410));
      if (!context.mounted) return;

      if (searchModelStatus.isresultSearchAni) {
        if (searchModelStatus.isSearchScreen) {
          closeSearchScreen(context);
        } else if (searchModelStatus.isSearchResultsScreen &&
            !searchModelStatus.isSearchScreen) {
          searchModelStatus.setSearchResultsScreen(false);
        }
      } else {
        if (retry == 0) {
          return isIconButton(context, retry: 1);
        }
      }
    }
  }

  void closeSearchScreen(BuildContext context) {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    searchModel.setSearchScreenStaus(false);
    searchModel.setFirstTabStatus(true);
  }

  void removeOverlayEntry() {
    state.overlayEntry?.remove();
    emit(state.copyWith(overlayEntry: null));
  }

  // 4.0 메인페이지 관련 함수들
  void incrementMainPageFinishCount(
      BuildContext context, Function(bool) onLoadingComplete) {
    final newFinishCount = state.mainPageFinishCount + 1;
    emit(state.copyWith(mainPageFinishCount: newFinishCount));

    final loginStatus =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    final finishRequired = loginStatus ? 5 : 4;

    if (newFinishCount == finishRequired) {
      onLoadingComplete(true);
    }
  }

  // 4.1 검색바 관련 함수들
  void setShowNotificationIcon(bool show) {
    emit(state.copyWith(showNotificationIcon: show));
  }

  void setSaveSearchController(String value) {
    emit(state.copyWith(saveSearchController: value));
  }

  void setInputText(String value) {
    emit(state.copyWith(inputText: value));
  }

  void setProfileImageUrl(String? url) {
    emit(state.copyWith(profileImageUrl: url));
  }

  void updateTextController(String text) {
    emit(state.copyWith(
      saveSearchController: text,
    ));
  }

  Future<void> toggleBottomSheet(BuildContext context,
      Function(bool) searchScreen, FocusNode focusNode) async {
    final searchModelStatus =
        Provider.of<SearchBarModel>(context, listen: false);

    if (searchModelStatus.isresultSearchAni) {
      final searchModel = Provider.of<SearchBarModel>(context, listen: false);
      searchModel.setFirstTabStatus(false);
      searchScreen(true);
      setShowNotificationIcon(false);

      await Future.delayed(const Duration(milliseconds: 450), () {
        if (context.mounted) {
          FocusScope.of(context).requestFocus(focusNode);
        }
      });
    }
  }

  Future<void> searchHistory(BuildContext context, String searchHistory,
      Function(bool) searchScreen) async {
    String trimmedSearchHistory = searchHistory.trim();
    final searchControllerModel =
        Provider.of<SearchBarModel>(context, listen: false);
    searchControllerModel.setSearchController(trimmedSearchHistory);

    try {
      bool isLoginStatus =
          Provider.of<LoginModel>(context, listen: false).loginStatus;

      if (isLoginStatus) {
        // SearchRemoteService를 통해 검색 수행
        await _searchRemoteService.performSearch(trimmedSearchHistory);

        // 검색 기록 다시 가져오기
        final searchHistory = await _searchRemoteService.getSearchHistory();
        emit(state.copyWith(searchHistory: searchHistory));
      } else {
        if (trimmedSearchHistory.isNotEmpty) {
          PreferencesSearchHistory preferencesSearchHistory =
              PreferencesSearchHistory();
          List<String> historyMatch =
              await preferencesSearchHistory.getSearchHistory() ?? [];
          if (!historyMatch.contains(trimmedSearchHistory)) {
            await preferencesSearchHistory
                .setSearchHistory(trimmedSearchHistory);
          }
        }
      }
      closeSearchScreenFromSearchBar(context, searchScreen);
    } catch (e) {
      // 에러 처리
    }
  }

  Future<void> closeSearchScreenFromSearchBar(
      BuildContext context, Function(bool) searchScreen) async {
    final searchModel = Provider.of<SearchBarModel>(context, listen: false);
    searchScreen(false);
    searchModel.setSearchScreenStaus(false);
    searchModel.setFirstTabStatus(true);

    await Future.delayed(const Duration(milliseconds: 120));
    searchModel.setSearchResultsScreen(true);
    await getDioSearchValueFromSearchBar(context);
  }

  Future<void> getDioSearchValueFromSearchBar(BuildContext context) async {
    if (!context.mounted) return;

    bool loginState =
        Provider.of<LoginModel>(context, listen: false).loginStatus;
    final searchScreenStatus =
        Provider.of<SearchScreenModel>(context, listen: false);

    if (loginState) {
      // 기존 검색 기록을 Provider에 설정 (추후 리팩토링 예정)
      searchScreenStatus.setStartSearch(state.searchHistory
          .map((e) => {
                'content': e.content,
                'historyId': e.historyId,
              })
          .toList());

      final popularSearches = await _searchRemoteService.getPopularSearches();
      if (context.mounted) {
        searchScreenStatus.setPopularSearches(popularSearches
            .map((e) => {
                  'value0': e.searchWord,
                  'value1': e.rankChangeValue,
                })
            .toList());
        emit(state.copyWith(popularSearches: popularSearches));
      }
    }
  }

  void updateSearchScreenState(BuildContext context) {
    final searchModel = Provider.of<SearchBarModel2>(context, listen: false);
    searchModel.setUserInputForRelatedSearch(state.inputText);
  }

  // 4.4 Top12 관련 함수들
  Future<void> top12GetDio(VoidCallback onLoadingComplete) async {
    final serverResult = await _mainScreenRemoteService.getTop12Stores();

    emit(state.copyWith(top12ServerResult: serverResult));

    final isFinish = top12DataProcessing();
    if (isFinish) {
      onLoadingComplete();
    }
  }

  bool top12DataProcessing() {
    if (state.top12ServerResult.length >= 12) {
      final storePage1 = state.top12ServerResult.sublist(0, 3);
      final storePage2 = state.top12ServerResult.sublist(3, 6);
      final storePage3 = state.top12ServerResult.sublist(6, 9);
      final storePage4 = state.top12ServerResult.sublist(9, 12);

      emit(state.copyWith(
        top12StorePage1: storePage1,
        top12StorePage2: storePage2,
        top12StorePage3: storePage3,
        top12StorePage4: storePage4,
        top12IsFinish: true,
      ));

      return true;
    }
    return false;
  }

  // 4.5 새로운 매장 관련 함수들
  Future<void> newStoreGetDio(VoidCallback onLoadingComplete) async {
    final severResult = await _mainScreenRemoteService.getNewStores();
    emit(state.copyWith(newStoreSeverResult: severResult));
    onLoadingComplete();

    final displayedStores = getRandomStores(severResult, 6);
    emit(state.copyWith(newStoreDisplayedStores: displayedStores));
  }

  List<MarketModel> getRandomStores(List<MarketModel> stores, int count) {
    if (stores.length <= count) {
      return stores;
    }

    final random = Random();
    final List<MarketModel> result = [];
    final List<int> indices = List.generate(stores.length, (index) => index);

    for (int i = 0; i < count; i++) {
      final int randomIndex = random.nextInt(indices.length);
      result.add(stores[indices[randomIndex]]);
      indices.removeAt(randomIndex);
    }

    return result;
  }

  // 4.6 베스트 리뷰 관련 함수들
  Future<void> bestReviewGetDio(VoidCallback onLoadingComplete) async {
    final serverResult = await _mainScreenRemoteService.getBestReviews();
    emit(state.copyWith(
      bestReviewServerResult: serverResult,
      bestReviewIsFinish: true,
    ));
    onLoadingComplete();
  }

  // 4.9 관광지 관련 함수들
  Future<void> attractionsGetDio(VoidCallback onLoadingComplete) async {
    final serverResult = await _mainScreenRemoteService.getTourismData(4);
    emit(state.copyWith(
      touristServerResult: serverResult,
      touristIsFinish: true,
    ));
    onLoadingComplete();
  }

  // 4.10 퀘스트 관련 함수들
  Future<void> questGetDio(VoidCallback onLoadingComplete) async {
    final serverResult = await _mainScreenRemoteService.getQuests();
    emit(state.copyWith(
      questServerResult: serverResult,
      questIsLoading: false,
    ));
    onLoadingComplete();
  }

  void setQuestShowPages({bool? first, bool? second, bool? third}) {
    emit(state.copyWith(
      questShowFirstPage: first ?? state.questShowFirstPage,
      questShowSecondPage: second ?? state.questShowSecondPage,
      questShowThirdPage: third ?? state.questShowThirdPage,
    ));
  }

  // 4.11 조인어스 관련 함수들 (StatelessWidget이므로 실제 함수는 없음)
  void initializeJoinUs() {
    emit(state.copyWith(
      joinUsServerResult: [{}, {}, {}],
    ));
  }
}

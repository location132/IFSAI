import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_dream/Page/5_search_page/page/search_state.dart';
import 'package:my_dream/model/search.dart';
import 'package:my_dream/repository/search_api/search_remote_service.dart';
import 'package:my_dream/coreService/Sharedpreferences.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchRemoteService _searchRemoteService;

  SearchCubit(this._searchRemoteService) : super(const SearchState());

  final PreferencesSearchHistory _preferencesSearchHistory =
      PreferencesSearchHistory();

  // ============= Animation 관련 함수들 =============
  void setSearchScreen(bool value) {
    emit(state.copyWith(isSearchScreen: value));
  }

  void setResultSearchAni(bool value) {
    emit(state.copyWith(resultSearchAni: value));
  }

  // ============= History 관련 함수들 =============

  // 검색기록 더보기/접기
  void toggleShowAll() {
    emit(state.copyWith(showAll: !state.showAll));
  }

  // 히스토리 투명도 설정
  void setHistoryOpacity(double opacity) {
    emit(state.copyWith(historyOpacity: opacity));
  }

  // isFirstSearchBar 설정
  void setIsFirstSearchBar(bool value) {
    emit(state.copyWith(isFirstSearchBar: value));
  }

  // 검색 기록 데이터 설정
  void setSearchHistory(List<SearchHistoryModel> history) {
    emit(state.copyWith(searchHistory: history));
  }

  void setSearchHistory2(List<SearchHistoryModel> history) {
    emit(state.copyWith(searchHistory2: history));
  }

  // 3개 이상 검색 기록 여부 설정
  void setHasThreeOrMoreRecentSearches(bool value) {
    emit(state.copyWith(hasThreeOrMoreRecentSearches: value));
  }

  // 검색기록 로드 - Service 사용
  Future<void> loadSearchHistory({required bool isLoggedIn}) async {
    emit(state.copyWith(isLoading: true));

    try {
      if (isLoggedIn) {
        // 로그인된 상태 - Service를 통해 서버에서 데이터 가져오기
        List<SearchHistoryModel> history =
            await _searchRemoteService.getSearchHistory();
        emit(state.copyWith(
          searchHistory: history,
          hasThreeOrMoreRecentSearches: history.length >= 4,
        ));
      } else {
        // 로그인 안된 상태 - 로컬 저장소에서 데이터 가져오기
        List<String> localHistory =
            await _preferencesSearchHistory.getSearchHistory() ?? [];
        List<SearchHistoryModel> history = localHistory.reversed
            .map((item) => SearchHistoryModel(content: item, historyId: ""))
            .toList();

        emit(state.copyWith(
          searchHistory: history,
          hasThreeOrMoreRecentSearches: localHistory.length >= 4,
        ));
      }
    } catch (e) {
      print('검색 기록 로드 실패: $e');
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  // 검색기록 더보기 처리
  Future<void> handleSeeMoreHistory({required bool isLoggedIn}) async {
    toggleShowAll();

    if (isLoggedIn) {
      List<SearchHistoryModel> allHistory = state.searchHistory;
      List<SearchHistoryModel> displayHistory = state.showAll
          ? allHistory.take(10).toList()
          : allHistory.take(3).toList();

      emit(state.copyWith(
        searchHistory2: displayHistory,
        hasThreeOrMoreRecentSearches: allHistory.length >= 4,
      ));
    } else {
      List<String> localHistory =
          await _preferencesSearchHistory.getSearchHistory() ?? [];
      List<SearchHistoryModel> allHistory = localHistory.reversed
          .map((item) => SearchHistoryModel(content: item, historyId: ""))
          .toList();

      List<SearchHistoryModel> displayHistory = state.showAll
          ? allHistory.take(10).toList()
          : allHistory.take(3).toList();

      emit(state.copyWith(
        searchHistory2: displayHistory,
        hasThreeOrMoreRecentSearches: localHistory.length >= 4,
      ));
    }
  }

  // 특정 검색기록 삭제 - Service 사용
  Future<void> removeHistory(dynamic searchItem,
      {required bool isLoggedIn}) async {
    setHistoryOpacity(0.0);

    await Future.delayed(const Duration(milliseconds: 300));

    if (isLoggedIn) {
      await _searchRemoteService.removeSearchHistory(searchItem.toString());
      List<SearchHistoryModel> updatedHistory = state.searchHistory
          .where((item) => item.historyId != searchItem.toString())
          .toList();

      emit(state.copyWith(
        searchHistory: updatedHistory,
        historyOpacity: 1.0,
        showAll: false,
      ));
    } else {
      await _preferencesSearchHistory.removeSearchHistory(searchItem);
      List<String> updatedLocalHistory =
          await _preferencesSearchHistory.getSearchHistory() ?? [];
      List<SearchHistoryModel> updatedHistory = updatedLocalHistory.reversed
          .map((item) => SearchHistoryModel(content: item, historyId: ""))
          .toList();

      emit(state.copyWith(
        searchHistory: updatedHistory.take(3).toList(),
        hasThreeOrMoreRecentSearches: updatedLocalHistory.length >= 4,
        historyOpacity: 1.0,
        showAll: false,
      ));
    }
  }

  // 모든 검색기록 삭제 - Service 사용
  Future<void> removeAllHistory({required bool isLoggedIn}) async {
    setHistoryOpacity(0.0);

    await Future.delayed(const Duration(milliseconds: 300));

    if (isLoggedIn) {
      await _searchRemoteService.removeAllSearchHistory();
    } else {
      await _preferencesSearchHistory.removeAllHistory();
    }

    emit(state.copyWith(
      searchHistory: [],
      searchHistory2: [],
      historyOpacity: 1.0,
      showAll: false,
      hasThreeOrMoreRecentSearches: false,
      isRemoveSearchHistory: false,
    ));
  }

  // ============= Keywords 관련 함수들 =============

  // 사용자 입력 검색어 설정
  void setUserInputForRelatedSearch(String input) {
    emit(state.copyWith(userInputForRelatedSearch: input));
  }

  // 이전 관련 검색어 저장
  void setPreviousRelatedSearches(List<String> searches) {
    emit(state.copyWith(previousRelatedSearches: searches));
  }

  // 관련 검색어 로드 - Service 사용
  Future<void> loadRelatedSearches() async {
    if (state.userInputForRelatedSearch.isNotEmpty) {
      try {
        List<String> relatedSearches = await _searchRemoteService
            .getRelatedSearches(state.userInputForRelatedSearch);

        if (state.userInputForRelatedSearch.isNotEmpty &&
            relatedSearches.isNotEmpty) {
          emit(state.copyWith(
            relatedSearches: relatedSearches,
            previousRelatedSearches: relatedSearches,
          ));
        } else {
          emit(state.copyWith(relatedSearches: state.previousRelatedSearches));
        }
      } catch (e) {
        print('관련 검색어 로드 실패: $e');
        emit(state.copyWith(relatedSearches: state.previousRelatedSearches));
      }
    } else {
      emit(state.copyWith(relatedSearches: []));
    }
  }

  // 관련 검색어 초기화
  void clearRelatedSearches() {
    emit(state.copyWith(
      userInputForRelatedSearch: '',
      relatedSearches: [],
      previousRelatedSearches: [],
    ));
  }

  // ============= Trending 관련 함수들 =============

  // 인기 검색어 로드 - Service 사용
  Future<void> loadPopularSearches() async {
    try {
      List<PopularSearchModel> popularSearches =
          await _searchRemoteService.getPopularSearches();
      emit(state.copyWith(popularSearches: popularSearches));
    } catch (e) {
      print('인기 검색어 로드 실패: $e');
      emit(state.copyWith(popularSearches: []));
    }
  }

  // ============= 유틸리티 함수들 =============

  // 한국 시간 포맷 가져오기
  String getKoreanTimeFormatted() {
    DateTime now = DateTime.now().toUtc().add(const Duration(hours: 9));
    String formattedDate = '${now.month.toString().padLeft(2, '0')}.'
        '${now.day.toString().padLeft(2, '0')} '
        '${now.hour.toString().padLeft(2, '0')}:00 기준';
    return formattedDate;
  }

  // 삭제 상태 설정
  void setRemoveSearchHistory(bool value) {
    emit(state.copyWith(isRemoveSearchHistory: value));
  }

  // 검색 수행
  Future<void> performSearch(String searchTerm) async {
    await _searchRemoteService.performSearch(searchTerm);
  }
}

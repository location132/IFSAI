import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/search.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    // History 관련 변수들 - 모델 타입으로 변경
    @Default([]) List<SearchHistoryModel> searchHistory,
    @Default([]) List<SearchHistoryModel> searchHistory2,
    @Default(false) bool showAll,
    @Default(1.0) double historyOpacity,
    @Default(true) bool isFirstSearchBar,
    @Default(false) bool hasThreeOrMoreRecentSearches,
    @Default(true) bool isRemoveState,

    // Keywords 관련 변수들
    @Default([]) List<String> relatedSearches,
    @Default([]) List<String> previousRelatedSearches,
    @Default('') String userInputForRelatedSearch,

    // Trending 관련 변수들 - 모델 타입으로 변경
    @Default([]) List<PopularSearchModel> popularSearches,

    // Animation 관련 변수들
    @Default(false) bool isSearchScreen,
    @Default(true) bool resultSearchAni,

    // 공통 상태 변수들
    @Default(false) bool isLoading,
    @Default(false) bool isRemoveSearchHistory,
  }) = _SearchState;
}

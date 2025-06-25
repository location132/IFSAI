// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
// History 관련 변수들 - 모델 타입으로 변경
  List<SearchHistoryModel> get searchHistory =>
      throw _privateConstructorUsedError;
  List<SearchHistoryModel> get searchHistory2 =>
      throw _privateConstructorUsedError;
  bool get showAll => throw _privateConstructorUsedError;
  double get historyOpacity => throw _privateConstructorUsedError;
  bool get isFirstSearchBar => throw _privateConstructorUsedError;
  bool get hasThreeOrMoreRecentSearches => throw _privateConstructorUsedError;
  bool get isRemoveState =>
      throw _privateConstructorUsedError; // Keywords 관련 변수들
  List<String> get relatedSearches => throw _privateConstructorUsedError;
  List<String> get previousRelatedSearches =>
      throw _privateConstructorUsedError;
  String get userInputForRelatedSearch =>
      throw _privateConstructorUsedError; // Trending 관련 변수들 - 모델 타입으로 변경
  List<PopularSearchModel> get popularSearches =>
      throw _privateConstructorUsedError; // Animation 관련 변수들
  bool get isSearchScreen => throw _privateConstructorUsedError;
  bool get resultSearchAni => throw _privateConstructorUsedError; // 공통 상태 변수들
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRemoveSearchHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SearchHistoryModel> searchHistory,
      List<SearchHistoryModel> searchHistory2,
      bool showAll,
      double historyOpacity,
      bool isFirstSearchBar,
      bool hasThreeOrMoreRecentSearches,
      bool isRemoveState,
      List<String> relatedSearches,
      List<String> previousRelatedSearches,
      String userInputForRelatedSearch,
      List<PopularSearchModel> popularSearches,
      bool isSearchScreen,
      bool resultSearchAni,
      bool isLoading,
      bool isRemoveSearchHistory});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchHistory = null,
    Object? searchHistory2 = null,
    Object? showAll = null,
    Object? historyOpacity = null,
    Object? isFirstSearchBar = null,
    Object? hasThreeOrMoreRecentSearches = null,
    Object? isRemoveState = null,
    Object? relatedSearches = null,
    Object? previousRelatedSearches = null,
    Object? userInputForRelatedSearch = null,
    Object? popularSearches = null,
    Object? isSearchScreen = null,
    Object? resultSearchAni = null,
    Object? isLoading = null,
    Object? isRemoveSearchHistory = null,
  }) {
    return _then(_value.copyWith(
      searchHistory: null == searchHistory
          ? _value.searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryModel>,
      searchHistory2: null == searchHistory2
          ? _value.searchHistory2
          : searchHistory2 // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryModel>,
      showAll: null == showAll
          ? _value.showAll
          : showAll // ignore: cast_nullable_to_non_nullable
              as bool,
      historyOpacity: null == historyOpacity
          ? _value.historyOpacity
          : historyOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      isFirstSearchBar: null == isFirstSearchBar
          ? _value.isFirstSearchBar
          : isFirstSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      hasThreeOrMoreRecentSearches: null == hasThreeOrMoreRecentSearches
          ? _value.hasThreeOrMoreRecentSearches
          : hasThreeOrMoreRecentSearches // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoveState: null == isRemoveState
          ? _value.isRemoveState
          : isRemoveState // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedSearches: null == relatedSearches
          ? _value.relatedSearches
          : relatedSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      previousRelatedSearches: null == previousRelatedSearches
          ? _value.previousRelatedSearches
          : previousRelatedSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userInputForRelatedSearch: null == userInputForRelatedSearch
          ? _value.userInputForRelatedSearch
          : userInputForRelatedSearch // ignore: cast_nullable_to_non_nullable
              as String,
      popularSearches: null == popularSearches
          ? _value.popularSearches
          : popularSearches // ignore: cast_nullable_to_non_nullable
              as List<PopularSearchModel>,
      isSearchScreen: null == isSearchScreen
          ? _value.isSearchScreen
          : isSearchScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      resultSearchAni: null == resultSearchAni
          ? _value.resultSearchAni
          : resultSearchAni // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoveSearchHistory: null == isRemoveSearchHistory
          ? _value.isRemoveSearchHistory
          : isRemoveSearchHistory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchHistoryModel> searchHistory,
      List<SearchHistoryModel> searchHistory2,
      bool showAll,
      double historyOpacity,
      bool isFirstSearchBar,
      bool hasThreeOrMoreRecentSearches,
      bool isRemoveState,
      List<String> relatedSearches,
      List<String> previousRelatedSearches,
      String userInputForRelatedSearch,
      List<PopularSearchModel> popularSearches,
      bool isSearchScreen,
      bool resultSearchAni,
      bool isLoading,
      bool isRemoveSearchHistory});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchHistory = null,
    Object? searchHistory2 = null,
    Object? showAll = null,
    Object? historyOpacity = null,
    Object? isFirstSearchBar = null,
    Object? hasThreeOrMoreRecentSearches = null,
    Object? isRemoveState = null,
    Object? relatedSearches = null,
    Object? previousRelatedSearches = null,
    Object? userInputForRelatedSearch = null,
    Object? popularSearches = null,
    Object? isSearchScreen = null,
    Object? resultSearchAni = null,
    Object? isLoading = null,
    Object? isRemoveSearchHistory = null,
  }) {
    return _then(_$SearchStateImpl(
      searchHistory: null == searchHistory
          ? _value._searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryModel>,
      searchHistory2: null == searchHistory2
          ? _value._searchHistory2
          : searchHistory2 // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryModel>,
      showAll: null == showAll
          ? _value.showAll
          : showAll // ignore: cast_nullable_to_non_nullable
              as bool,
      historyOpacity: null == historyOpacity
          ? _value.historyOpacity
          : historyOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      isFirstSearchBar: null == isFirstSearchBar
          ? _value.isFirstSearchBar
          : isFirstSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      hasThreeOrMoreRecentSearches: null == hasThreeOrMoreRecentSearches
          ? _value.hasThreeOrMoreRecentSearches
          : hasThreeOrMoreRecentSearches // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoveState: null == isRemoveState
          ? _value.isRemoveState
          : isRemoveState // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedSearches: null == relatedSearches
          ? _value._relatedSearches
          : relatedSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      previousRelatedSearches: null == previousRelatedSearches
          ? _value._previousRelatedSearches
          : previousRelatedSearches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userInputForRelatedSearch: null == userInputForRelatedSearch
          ? _value.userInputForRelatedSearch
          : userInputForRelatedSearch // ignore: cast_nullable_to_non_nullable
              as String,
      popularSearches: null == popularSearches
          ? _value._popularSearches
          : popularSearches // ignore: cast_nullable_to_non_nullable
              as List<PopularSearchModel>,
      isSearchScreen: null == isSearchScreen
          ? _value.isSearchScreen
          : isSearchScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      resultSearchAni: null == resultSearchAni
          ? _value.resultSearchAni
          : resultSearchAni // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRemoveSearchHistory: null == isRemoveSearchHistory
          ? _value.isRemoveSearchHistory
          : isRemoveSearchHistory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {final List<SearchHistoryModel> searchHistory = const [],
      final List<SearchHistoryModel> searchHistory2 = const [],
      this.showAll = false,
      this.historyOpacity = 1.0,
      this.isFirstSearchBar = true,
      this.hasThreeOrMoreRecentSearches = false,
      this.isRemoveState = true,
      final List<String> relatedSearches = const [],
      final List<String> previousRelatedSearches = const [],
      this.userInputForRelatedSearch = '',
      final List<PopularSearchModel> popularSearches = const [],
      this.isSearchScreen = false,
      this.resultSearchAni = true,
      this.isLoading = false,
      this.isRemoveSearchHistory = false})
      : _searchHistory = searchHistory,
        _searchHistory2 = searchHistory2,
        _relatedSearches = relatedSearches,
        _previousRelatedSearches = previousRelatedSearches,
        _popularSearches = popularSearches;

// History 관련 변수들 - 모델 타입으로 변경
  final List<SearchHistoryModel> _searchHistory;
// History 관련 변수들 - 모델 타입으로 변경
  @override
  @JsonKey()
  List<SearchHistoryModel> get searchHistory {
    if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory);
  }

  final List<SearchHistoryModel> _searchHistory2;
  @override
  @JsonKey()
  List<SearchHistoryModel> get searchHistory2 {
    if (_searchHistory2 is EqualUnmodifiableListView) return _searchHistory2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory2);
  }

  @override
  @JsonKey()
  final bool showAll;
  @override
  @JsonKey()
  final double historyOpacity;
  @override
  @JsonKey()
  final bool isFirstSearchBar;
  @override
  @JsonKey()
  final bool hasThreeOrMoreRecentSearches;
  @override
  @JsonKey()
  final bool isRemoveState;
// Keywords 관련 변수들
  final List<String> _relatedSearches;
// Keywords 관련 변수들
  @override
  @JsonKey()
  List<String> get relatedSearches {
    if (_relatedSearches is EqualUnmodifiableListView) return _relatedSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedSearches);
  }

  final List<String> _previousRelatedSearches;
  @override
  @JsonKey()
  List<String> get previousRelatedSearches {
    if (_previousRelatedSearches is EqualUnmodifiableListView)
      return _previousRelatedSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousRelatedSearches);
  }

  @override
  @JsonKey()
  final String userInputForRelatedSearch;
// Trending 관련 변수들 - 모델 타입으로 변경
  final List<PopularSearchModel> _popularSearches;
// Trending 관련 변수들 - 모델 타입으로 변경
  @override
  @JsonKey()
  List<PopularSearchModel> get popularSearches {
    if (_popularSearches is EqualUnmodifiableListView) return _popularSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularSearches);
  }

// Animation 관련 변수들
  @override
  @JsonKey()
  final bool isSearchScreen;
  @override
  @JsonKey()
  final bool resultSearchAni;
// 공통 상태 변수들
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRemoveSearchHistory;

  @override
  String toString() {
    return 'SearchState(searchHistory: $searchHistory, searchHistory2: $searchHistory2, showAll: $showAll, historyOpacity: $historyOpacity, isFirstSearchBar: $isFirstSearchBar, hasThreeOrMoreRecentSearches: $hasThreeOrMoreRecentSearches, isRemoveState: $isRemoveState, relatedSearches: $relatedSearches, previousRelatedSearches: $previousRelatedSearches, userInputForRelatedSearch: $userInputForRelatedSearch, popularSearches: $popularSearches, isSearchScreen: $isSearchScreen, resultSearchAni: $resultSearchAni, isLoading: $isLoading, isRemoveSearchHistory: $isRemoveSearchHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchHistory, _searchHistory) &&
            const DeepCollectionEquality()
                .equals(other._searchHistory2, _searchHistory2) &&
            (identical(other.showAll, showAll) || other.showAll == showAll) &&
            (identical(other.historyOpacity, historyOpacity) ||
                other.historyOpacity == historyOpacity) &&
            (identical(other.isFirstSearchBar, isFirstSearchBar) ||
                other.isFirstSearchBar == isFirstSearchBar) &&
            (identical(other.hasThreeOrMoreRecentSearches,
                    hasThreeOrMoreRecentSearches) ||
                other.hasThreeOrMoreRecentSearches ==
                    hasThreeOrMoreRecentSearches) &&
            (identical(other.isRemoveState, isRemoveState) ||
                other.isRemoveState == isRemoveState) &&
            const DeepCollectionEquality()
                .equals(other._relatedSearches, _relatedSearches) &&
            const DeepCollectionEquality().equals(
                other._previousRelatedSearches, _previousRelatedSearches) &&
            (identical(other.userInputForRelatedSearch,
                    userInputForRelatedSearch) ||
                other.userInputForRelatedSearch == userInputForRelatedSearch) &&
            const DeepCollectionEquality()
                .equals(other._popularSearches, _popularSearches) &&
            (identical(other.isSearchScreen, isSearchScreen) ||
                other.isSearchScreen == isSearchScreen) &&
            (identical(other.resultSearchAni, resultSearchAni) ||
                other.resultSearchAni == resultSearchAni) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRemoveSearchHistory, isRemoveSearchHistory) ||
                other.isRemoveSearchHistory == isRemoveSearchHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchHistory),
      const DeepCollectionEquality().hash(_searchHistory2),
      showAll,
      historyOpacity,
      isFirstSearchBar,
      hasThreeOrMoreRecentSearches,
      isRemoveState,
      const DeepCollectionEquality().hash(_relatedSearches),
      const DeepCollectionEquality().hash(_previousRelatedSearches),
      userInputForRelatedSearch,
      const DeepCollectionEquality().hash(_popularSearches),
      isSearchScreen,
      resultSearchAni,
      isLoading,
      isRemoveSearchHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final List<SearchHistoryModel> searchHistory,
      final List<SearchHistoryModel> searchHistory2,
      final bool showAll,
      final double historyOpacity,
      final bool isFirstSearchBar,
      final bool hasThreeOrMoreRecentSearches,
      final bool isRemoveState,
      final List<String> relatedSearches,
      final List<String> previousRelatedSearches,
      final String userInputForRelatedSearch,
      final List<PopularSearchModel> popularSearches,
      final bool isSearchScreen,
      final bool resultSearchAni,
      final bool isLoading,
      final bool isRemoveSearchHistory}) = _$SearchStateImpl;

  @override // History 관련 변수들 - 모델 타입으로 변경
  List<SearchHistoryModel> get searchHistory;
  @override
  List<SearchHistoryModel> get searchHistory2;
  @override
  bool get showAll;
  @override
  double get historyOpacity;
  @override
  bool get isFirstSearchBar;
  @override
  bool get hasThreeOrMoreRecentSearches;
  @override
  bool get isRemoveState;
  @override // Keywords 관련 변수들
  List<String> get relatedSearches;
  @override
  List<String> get previousRelatedSearches;
  @override
  String get userInputForRelatedSearch;
  @override // Trending 관련 변수들 - 모델 타입으로 변경
  List<PopularSearchModel> get popularSearches;
  @override // Animation 관련 변수들
  bool get isSearchScreen;
  @override
  bool get resultSearchAni;
  @override // 공통 상태 변수들
  bool get isLoading;
  @override
  bool get isRemoveSearchHistory;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

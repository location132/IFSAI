import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/market.dart';
import 'package:my_dream/model/main_screen.dart';
import 'package:my_dream/model/search.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isSearchBarMove,
    @Default(false) bool isSearchBarAni,
    @Default(true) bool isFirstSearchbarEntry,
    @Default(false) bool isLogoMove,
    @Default(false) bool isLogoAni,
    @Default(true) bool isFirstLogoEntry,
    @Default(false) bool jumpScreen,
    @Default(false) bool isLoadFinish,
    @Default(0) int finishCount,
    @Default(true) bool isScreenChange,
    DateTime? lastSearchBarAppearance,
    @Default(0.0) double lastScrollPosition,
    DateTime? lastScrollTime,
    @Default([]) List<SearchHistoryModel> searchHistory,
    @Default([]) List<PopularSearchModel> popularSearches,
    OverlayEntry? overlayEntry,
    @Default(0) int mainPageFinishCount,
    @Default(true) bool showNotificationIcon,
    @Default('') String saveSearchController,
    @Default('') String inputText,
    String? profileImageUrl,
    @Default(false) bool top12IsFinish,
    @Default([]) List<Top12MarketModel> top12ServerResult,
    @Default([]) List<Top12MarketModel> top12StorePage1,
    @Default([]) List<Top12MarketModel> top12StorePage2,
    @Default([]) List<Top12MarketModel> top12StorePage3,
    @Default([]) List<Top12MarketModel> top12StorePage4,
    @Default([]) List<MarketModel> newStoreSeverResult,
    @Default([]) List<MarketModel> newStoreDisplayedStores,
    @Default(0) int newStoreStorCount,
    @Default([]) List<BestReviewModel> bestReviewServerResult,
    @Default(false) bool bestReviewIsFinish,
    @Default([]) List<TourismModel> touristServerResult,
    @Default(false) bool touristIsFinish,
    @Default([]) List<QuestModel> questServerResult,
    @Default(false) bool questShowFirstPage,
    @Default(false) bool questShowSecondPage,
    @Default(false) bool questShowThirdPage,
    @Default(true) bool questIsLoading,
    @Default([]) List<Map<String, dynamic>> joinUsServerResult,
  }) = _MainState;
}

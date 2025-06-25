import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

// 검색 기록 모델
@freezed
class SearchHistoryModel with _$SearchHistoryModel {
  const factory SearchHistoryModel({
    required String content,
    required String historyId,
  }) = _SearchHistoryModel;

  factory SearchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryModelFromJson(json);
}

// 인기 검색어 모델
@freezed
class PopularSearchModel with _$PopularSearchModel {
  const factory PopularSearchModel({
    required String searchWord,
    required int rankChangeValue,
  }) = _PopularSearchModel;

  factory PopularSearchModel.fromJson(Map<String, dynamic> json) =>
      _$PopularSearchModelFromJson(json);
}

// 관련 검색어 모델 (단순 문자열 리스트이므로 별도 모델 불필요)
// List<String>으로 처리

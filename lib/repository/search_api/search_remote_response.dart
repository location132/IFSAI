import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/search.dart';

part 'search_remote_response.freezed.dart';
part 'search_remote_response.g.dart';

//-------- 검색 기록 응답 --------
@freezed
class SearchHistoryResponse with _$SearchHistoryResponse {
  const SearchHistoryResponse._();

  const factory SearchHistoryResponse({
    @Default([]) List<SearchHistoryData> histories,
  }) = _SearchHistoryResponse;

  factory SearchHistoryResponse.fromJson(List<dynamic> json) =>
      SearchHistoryResponse(
        histories:
            json.map((item) => SearchHistoryData.fromJson(item)).toList(),
      );

  List<SearchHistoryModel> toModel() {
    return histories.map((history) => history.toModel()).toList();
  }
}

@freezed
class SearchHistoryData with _$SearchHistoryData {
  const SearchHistoryData._();

  const factory SearchHistoryData({
    required String content,
    required int historyId,
  }) = _SearchHistoryData;

  factory SearchHistoryData.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryDataFromJson(json);

  SearchHistoryModel toModel() {
    return SearchHistoryModel(
      content: content,
      historyId: historyId.toString(),
    );
  }
}

//-------- 인기 검색어 응답 --------
@freezed
class PopularSearchResponse with _$PopularSearchResponse {
  const PopularSearchResponse._();

  const factory PopularSearchResponse({
    @Default([]) List<PopularSearchData> searches,
  }) = _PopularSearchResponse;

  factory PopularSearchResponse.fromJson(List<dynamic> json) =>
      PopularSearchResponse(
        searches: json.map((item) => PopularSearchData.fromJson(item)).toList(),
      );

  List<PopularSearchModel> toModel() {
    return searches.map((search) => search.toModel()).toList();
  }
}

@freezed
class PopularSearchData with _$PopularSearchData {
  const PopularSearchData._();

  const factory PopularSearchData({
    required String searchWord,
    required int rankChangeValue,
  }) = _PopularSearchData;

  factory PopularSearchData.fromJson(Map<String, dynamic> json) =>
      _$PopularSearchDataFromJson(json);

  PopularSearchModel toModel() {
    return PopularSearchModel(
      searchWord: searchWord,
      rankChangeValue: rankChangeValue,
    );
  }
}

//-------- 관련 검색어 응답 --------
@freezed
class RelatedSearchResponse with _$RelatedSearchResponse {
  const RelatedSearchResponse._();

  const factory RelatedSearchResponse({
    @Default([]) List<RelatedSearchData> searches,
  }) = _RelatedSearchResponse;

  factory RelatedSearchResponse.fromJson(List<dynamic> json) =>
      RelatedSearchResponse(
        searches: json.map((item) => RelatedSearchData.fromJson(item)).toList(),
      );

  List<String> toModel() {
    return searches.map((search) => search.word).toList();
  }
}

@freezed
class RelatedSearchData with _$RelatedSearchData {
  const factory RelatedSearchData({
    required String word,
  }) = _RelatedSearchData;

  factory RelatedSearchData.fromJson(Map<String, dynamic> json) =>
      _$RelatedSearchDataFromJson(json);
}

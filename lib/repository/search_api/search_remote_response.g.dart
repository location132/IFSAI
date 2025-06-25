// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchHistoryResponseImpl _$$SearchHistoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryResponseImpl(
      histories: (json['histories'] as List<dynamic>?)
              ?.map(
                  (e) => SearchHistoryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchHistoryResponseImplToJson(
        _$SearchHistoryResponseImpl instance) =>
    <String, dynamic>{
      'histories': instance.histories,
    };

_$SearchHistoryDataImpl _$$SearchHistoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryDataImpl(
      content: json['content'] as String,
      historyId: (json['historyId'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchHistoryDataImplToJson(
        _$SearchHistoryDataImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'historyId': instance.historyId,
    };

_$PopularSearchResponseImpl _$$PopularSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularSearchResponseImpl(
      searches: (json['searches'] as List<dynamic>?)
              ?.map(
                  (e) => PopularSearchData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PopularSearchResponseImplToJson(
        _$PopularSearchResponseImpl instance) =>
    <String, dynamic>{
      'searches': instance.searches,
    };

_$PopularSearchDataImpl _$$PopularSearchDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularSearchDataImpl(
      searchWord: json['searchWord'] as String,
      rankChangeValue: (json['rankChangeValue'] as num).toInt(),
    );

Map<String, dynamic> _$$PopularSearchDataImplToJson(
        _$PopularSearchDataImpl instance) =>
    <String, dynamic>{
      'searchWord': instance.searchWord,
      'rankChangeValue': instance.rankChangeValue,
    };

_$RelatedSearchResponseImpl _$$RelatedSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RelatedSearchResponseImpl(
      searches: (json['searches'] as List<dynamic>?)
              ?.map(
                  (e) => RelatedSearchData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RelatedSearchResponseImplToJson(
        _$RelatedSearchResponseImpl instance) =>
    <String, dynamic>{
      'searches': instance.searches,
    };

_$RelatedSearchDataImpl _$$RelatedSearchDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RelatedSearchDataImpl(
      word: json['word'] as String,
    );

Map<String, dynamic> _$$RelatedSearchDataImplToJson(
        _$RelatedSearchDataImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
    };

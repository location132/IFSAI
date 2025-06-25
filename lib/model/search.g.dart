// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchHistoryModelImpl _$$SearchHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryModelImpl(
      content: json['content'] as String,
      historyId: json['historyId'] as String,
    );

Map<String, dynamic> _$$SearchHistoryModelImplToJson(
        _$SearchHistoryModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'historyId': instance.historyId,
    };

_$PopularSearchModelImpl _$$PopularSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularSearchModelImpl(
      searchWord: json['searchWord'] as String,
      rankChangeValue: (json['rankChangeValue'] as num).toInt(),
    );

Map<String, dynamic> _$$PopularSearchModelImplToJson(
        _$PopularSearchModelImpl instance) =>
    <String, dynamic>{
      'searchWord': instance.searchWord,
      'rankChangeValue': instance.rankChangeValue,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewStoresResponseImpl _$$NewStoresResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewStoresResponseImpl(
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => NewStoreData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NewStoresResponseImplToJson(
        _$NewStoresResponseImpl instance) =>
    <String, dynamic>{
      'stores': instance.stores,
    };

_$NewStoreDataImpl _$$NewStoreDataImplFromJson(Map<String, dynamic> json) =>
    _$NewStoreDataImpl(
      marketId: (json['marketId'] as num).toInt(),
      locationX: (json['locationX'] as num).toDouble(),
      locationY: (json['locationY'] as num).toDouble(),
      marketImage: json['marketImage'] as String,
      marketName: json['marketName'] as String,
      marketDescription: json['marketDescription'] as String,
      detailAddress: json['detailAddress'] as String,
      eventMessage: json['eventMessage'] as String?,
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String,
      closedDays: json['closedDays'] as String,
      averageReviewScore: (json['averageReviewScore'] as num).toDouble(),
      reviewCount: (json['reviewCount'] as num).toInt(),
      maxDiscountRate: (json['maxDiscountRate'] as num).toInt(),
    );

Map<String, dynamic> _$$NewStoreDataImplToJson(_$NewStoreDataImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'locationX': instance.locationX,
      'locationY': instance.locationY,
      'marketImage': instance.marketImage,
      'marketName': instance.marketName,
      'marketDescription': instance.marketDescription,
      'detailAddress': instance.detailAddress,
      'eventMessage': instance.eventMessage,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'closedDays': instance.closedDays,
      'averageReviewScore': instance.averageReviewScore,
      'reviewCount': instance.reviewCount,
      'maxDiscountRate': instance.maxDiscountRate,
    };

_$Top12StoresResponseImpl _$$Top12StoresResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$Top12StoresResponseImpl(
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => Top12StoreData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$Top12StoresResponseImplToJson(
        _$Top12StoresResponseImpl instance) =>
    <String, dynamic>{
      'stores': instance.stores,
    };

_$Top12StoreDataImpl _$$Top12StoreDataImplFromJson(Map<String, dynamic> json) =>
    _$Top12StoreDataImpl(
      marketId: (json['marketId'] as num).toInt(),
      marketImage: json['marketImage'] as String,
      marketName: json['marketName'] as String,
      marketDescription: json['marketDescription'] as String,
      averageReviewScore: (json['averageReviewScore'] as num).toDouble(),
      reviewCount: (json['reviewCount'] as num).toInt(),
    );

Map<String, dynamic> _$$Top12StoreDataImplToJson(
        _$Top12StoreDataImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'marketImage': instance.marketImage,
      'marketName': instance.marketName,
      'marketDescription': instance.marketDescription,
      'averageReviewScore': instance.averageReviewScore,
      'reviewCount': instance.reviewCount,
    };

_$BestReviewsResponseImpl _$$BestReviewsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BestReviewsResponseImpl(
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => BestReviewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BestReviewsResponseImplToJson(
        _$BestReviewsResponseImpl instance) =>
    <String, dynamic>{
      'reviews': instance.reviews,
    };

_$BestReviewDataImpl _$$BestReviewDataImplFromJson(Map<String, dynamic> json) =>
    _$BestReviewDataImpl(
      reviewId: (json['reviewId'] as num).toInt(),
      marketId: (json['marketId'] as num).toInt(),
      writeDate: json['writeDate'] as String,
      reviewContent: json['reviewContent'] as String,
      reviewerEmail: json['reviewerEmail'] as String,
      recommendCount: (json['recommendCount'] as num).toInt(),
      recommendation: json['recommendation'] as bool,
      reviewerImage: json['reviewerImage'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ReviewImageData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BestReviewDataImplToJson(
        _$BestReviewDataImpl instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'marketId': instance.marketId,
      'writeDate': instance.writeDate,
      'reviewContent': instance.reviewContent,
      'reviewerEmail': instance.reviewerEmail,
      'recommendCount': instance.recommendCount,
      'recommendation': instance.recommendation,
      'reviewerImage': instance.reviewerImage,
      'images': instance.images,
    };

_$ReviewImageDataImpl _$$ReviewImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewImageDataImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ReviewImageDataImplToJson(
        _$ReviewImageDataImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };

_$TourismDataResponseImpl _$$TourismDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TourismDataResponseImpl(
      places: (json['places'] as List<dynamic>?)
              ?.map((e) => TourismData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TourismDataResponseImplToJson(
        _$TourismDataResponseImpl instance) =>
    <String, dynamic>{
      'places': instance.places,
    };

_$TourismDataImpl _$$TourismDataImplFromJson(Map<String, dynamic> json) =>
    _$TourismDataImpl(
      imageUrl: json['imageUrl'] as String,
      tags: json['tags'] as String,
      introduce: json['introduce'] as String,
    );

Map<String, dynamic> _$$TourismDataImplToJson(_$TourismDataImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'tags': instance.tags,
      'introduce': instance.introduce,
    };

_$QuestsResponseImpl _$$QuestsResponseImplFromJson(Map<String, dynamic> json) =>
    _$QuestsResponseImpl(
      quests: (json['quests'] as List<dynamic>?)
              ?.map((e) => QuestData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuestsResponseImplToJson(
        _$QuestsResponseImpl instance) =>
    <String, dynamic>{
      'quests': instance.quests,
    };

_$QuestDataImpl _$$QuestDataImplFromJson(Map<String, dynamic> json) =>
    _$QuestDataImpl(
      level: (json['level'] as num).toInt(),
      expValue: (json['expValue'] as num).toInt(),
      weightPreviousLevel: (json['weightPreviousLevel'] as num).toInt(),
      weightCurrentLevel: (json['weightCurrentLevel'] as num).toInt(),
      weightNextLevel: (json['weightNextLevel'] as num).toInt(),
      gainExpPreviousLevel: (json['gainExpPreviousLevel'] as num).toInt(),
      gainExpCurrentLevel: (json['gainExpCurrentLevel'] as num).toInt(),
      gainExpNextLevel: (json['gainExpNextLevel'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$QuestDataImplToJson(_$QuestDataImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'expValue': instance.expValue,
      'weightPreviousLevel': instance.weightPreviousLevel,
      'weightCurrentLevel': instance.weightCurrentLevel,
      'weightNextLevel': instance.weightNextLevel,
      'gainExpPreviousLevel': instance.gainExpPreviousLevel,
      'gainExpCurrentLevel': instance.gainExpCurrentLevel,
      'gainExpNextLevel': instance.gainExpNextLevel,
      'message': instance.message,
    };

_$QuestLevelResponseImpl _$$QuestLevelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestLevelResponseImpl(
      level: (json['level'] as num).toInt(),
      totalExp: (json['totalExp'] as num).toInt(),
      currentLevelExp: (json['currentLevelExp'] as num).toInt(),
      nextLevelExp: (json['nextLevelExp'] as num).toInt(),
    );

Map<String, dynamic> _$$QuestLevelResponseImplToJson(
        _$QuestLevelResponseImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'totalExp': instance.totalExp,
      'currentLevelExp': instance.currentLevelExp,
      'nextLevelExp': instance.nextLevelExp,
    };

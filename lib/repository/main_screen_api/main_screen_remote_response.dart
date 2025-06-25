import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/market.dart';
import 'package:my_dream/model/main_screen.dart';

part 'main_screen_remote_response.freezed.dart';
part 'main_screen_remote_response.g.dart';

//-------- 새로운 매장 목록 응답 --------
@freezed
class NewStoresResponse with _$NewStoresResponse {
  const NewStoresResponse._();

  const factory NewStoresResponse({
    @Default([]) List<NewStoreData> stores,
  }) = _NewStoresResponse;

  factory NewStoresResponse.fromJson(Map<String, dynamic> json) =>
      _$NewStoresResponseFromJson(json);

  List<MarketModel> toModel() {
    return stores
        .map((store) => MarketModel(
              marketId: store.marketId,
              mainCategory: '', // API에서 제공하지 않는 경우 기본값
              locationX: store.locationX,
              locationY: store.locationY,
              marketImage: store.marketImage,
              marketName: store.marketName,
              marketDescription: store.marketDescription,
              detailAddress: store.detailAddress,
              eventMessage: store.eventMessage,
              openTime: store.openTime,
              closeTime: store.closeTime,
              closedDays: store.closedDays,
              averageReviewScore: store.averageReviewScore,
              reviewCount: store.reviewCount,
              maxDiscountRate: store.maxDiscountRate,
            ))
        .toList();
  }
}

@freezed
class NewStoreData with _$NewStoreData {
  const factory NewStoreData({
    required int marketId,
    required double locationX,
    required double locationY,
    required String marketImage,
    required String marketName,
    required String marketDescription,
    required String detailAddress,
    String? eventMessage,
    required String openTime,
    required String closeTime,
    required String closedDays,
    required double averageReviewScore,
    required int reviewCount,
    required int maxDiscountRate,
  }) = _NewStoreData;

  factory NewStoreData.fromJson(Map<String, dynamic> json) =>
      _$NewStoreDataFromJson(json);
}

//-------- Top12 추천 매장 응답 --------
@freezed
class Top12StoresResponse with _$Top12StoresResponse {
  const Top12StoresResponse._();

  const factory Top12StoresResponse({
    @Default([]) List<Top12StoreData> stores,
  }) = _Top12StoresResponse;

  factory Top12StoresResponse.fromJson(Map<String, dynamic> json) =>
      _$Top12StoresResponseFromJson(json);

  List<Top12MarketModel> toModel() {
    return stores
        .map((store) => Top12MarketModel(
              marketId: store.marketId,
              marketImage: store.marketImage,
              marketName: store.marketName,
              marketDescription: store.marketDescription,
              averageReviewScore: store.averageReviewScore,
              reviewCount: store.reviewCount,
            ))
        .toList();
  }
}

@freezed
class Top12StoreData with _$Top12StoreData {
  const factory Top12StoreData({
    required int marketId,
    required String marketImage,
    required String marketName,
    required String marketDescription,
    required double averageReviewScore,
    required int reviewCount,
  }) = _Top12StoreData;

  factory Top12StoreData.fromJson(Map<String, dynamic> json) =>
      _$Top12StoreDataFromJson(json);
}

//-------- 베스트 리뷰 응답 --------
@freezed
class BestReviewsResponse with _$BestReviewsResponse {
  const BestReviewsResponse._();

  const factory BestReviewsResponse({
    @Default([]) List<BestReviewData> reviews,
  }) = _BestReviewsResponse;

  factory BestReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$BestReviewsResponseFromJson(json);

  List<BestReviewModel> toModel() {
    return reviews
        .map((review) => BestReviewModel(
              reviewId: review.reviewId,
              marketId: review.marketId,
              writeDate: review.writeDate,
              reviewContent: review.reviewContent,
              reviewImage:
                  review.images.isNotEmpty ? review.images[0].image : '',
              reviewerEmail: review.reviewerEmail,
              recommendCount: review.recommendCount,
              recommendation: review.recommendation,
              reviewerImage: review.reviewerImage,
            ))
        .toList();
  }
}

@freezed
class BestReviewData with _$BestReviewData {
  const factory BestReviewData({
    required int reviewId,
    required int marketId,
    required String writeDate,
    required String reviewContent,
    required String reviewerEmail,
    required int recommendCount,
    required bool recommendation,
    required String reviewerImage,
    @Default([]) List<ReviewImageData> images,
  }) = _BestReviewData;

  factory BestReviewData.fromJson(Map<String, dynamic> json) =>
      _$BestReviewDataFromJson(json);
}

@freezed
class ReviewImageData with _$ReviewImageData {
  const factory ReviewImageData({
    required String image,
  }) = _ReviewImageData;

  factory ReviewImageData.fromJson(Map<String, dynamic> json) =>
      _$ReviewImageDataFromJson(json);
}

//-------- 관광지 정보 응답 --------
@freezed
class TourismDataResponse with _$TourismDataResponse {
  const TourismDataResponse._();

  const factory TourismDataResponse({
    @Default([]) List<TourismData> places,
  }) = _TourismDataResponse;

  factory TourismDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TourismDataResponseFromJson(json);

  List<TourismModel> toModel() {
    return places
        .map((place) => TourismModel(
              imageUrl: place.imageUrl,
              tags: place.tags,
              introduce: place.introduce,
            ))
        .toList();
  }
}

@freezed
class TourismData with _$TourismData {
  const factory TourismData({
    required String imageUrl,
    required String tags,
    required String introduce,
  }) = _TourismData;

  factory TourismData.fromJson(Map<String, dynamic> json) =>
      _$TourismDataFromJson(json);
}

//-------- 퀘스트 목록 응답 --------
@freezed
class QuestsResponse with _$QuestsResponse {
  const QuestsResponse._();

  const factory QuestsResponse({
    @Default([]) List<QuestData> quests,
  }) = _QuestsResponse;

  factory QuestsResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestsResponseFromJson(json);

  List<QuestModel> toModel() {
    return quests
        .map((quest) => QuestModel(
              level: quest.level,
              expValue: quest.expValue,
              weightPreviousLevel: quest.weightPreviousLevel,
              weightCurrentLevel: quest.weightCurrentLevel,
              weightNextLevel: quest.weightNextLevel,
              gainExpPreviousLevel: quest.gainExpPreviousLevel,
              gainExpCurrentLevel: quest.gainExpCurrentLevel,
              gainExpNextLevel: quest.gainExpNextLevel,
              message: quest.message,
            ))
        .toList();
  }
}

@freezed
class QuestData with _$QuestData {
  const factory QuestData({
    required int level,
    required int expValue,
    required int weightPreviousLevel,
    required int weightCurrentLevel,
    required int weightNextLevel,
    required int gainExpPreviousLevel,
    required int gainExpCurrentLevel,
    required int gainExpNextLevel,
    required String message,
  }) = _QuestData;

  factory QuestData.fromJson(Map<String, dynamic> json) =>
      _$QuestDataFromJson(json);
}

//-------- 퀘스트 레벨 응답 --------
@freezed
class QuestLevelResponse with _$QuestLevelResponse {
  const QuestLevelResponse._();

  const factory QuestLevelResponse({
    required int level,
    required int totalExp,
    required int currentLevelExp,
    required int nextLevelExp,
  }) = _QuestLevelResponse;

  factory QuestLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestLevelResponseFromJson(json);

  QuestLevelModel toModel() {
    return QuestLevelModel(
      level: level,
      totalExp: totalExp,
      currentLevelExp: currentLevelExp,
      nextLevelExp: nextLevelExp,
    );
  }
}

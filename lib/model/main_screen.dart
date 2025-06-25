import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen.freezed.dart';

//-------- Top12 매장 모델 --------
@freezed
class Top12MarketModel with _$Top12MarketModel {
  const factory Top12MarketModel({
    required int marketId,
    required String marketImage,
    required String marketName,
    required String marketDescription,
    required double averageReviewScore,
    required int reviewCount,
  }) = _Top12MarketModel;
}

//-------- 베스트 리뷰 모델 --------
@freezed
class BestReviewModel with _$BestReviewModel {
  const factory BestReviewModel({
    required int reviewId,
    required int marketId,
    required String writeDate,
    required String reviewContent,
    required String reviewImage,
    required String reviewerEmail,
    required int recommendCount,
    required bool recommendation,
    required String reviewerImage,
  }) = _BestReviewModel;
}

//-------- 관광지 모델 --------
@freezed
class TourismModel with _$TourismModel {
  const factory TourismModel({
    required String imageUrl,
    required String tags,
    required String introduce,
  }) = _TourismModel;
}

//-------- 퀘스트 모델 --------
@freezed
class QuestModel with _$QuestModel {
  const factory QuestModel({
    required int level,
    required int expValue,
    required int weightPreviousLevel,
    required int weightCurrentLevel,
    required int weightNextLevel,
    required int gainExpPreviousLevel,
    required int gainExpCurrentLevel,
    required int gainExpNextLevel,
    required String message,
  }) = _QuestModel;
}

//-------- 퀘스트 레벨 모델 --------
@freezed
class QuestLevelModel with _$QuestLevelModel {
  const factory QuestLevelModel({
    required int level,
    required int totalExp,
    required int currentLevelExp,
    required int nextLevelExp,
  }) = _QuestLevelModel;
}

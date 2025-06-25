// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Top12MarketModel {
  int get marketId => throw _privateConstructorUsedError;
  String get marketImage => throw _privateConstructorUsedError;
  String get marketName => throw _privateConstructorUsedError;
  String get marketDescription => throw _privateConstructorUsedError;
  double get averageReviewScore => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Top12MarketModelCopyWith<Top12MarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Top12MarketModelCopyWith<$Res> {
  factory $Top12MarketModelCopyWith(
          Top12MarketModel value, $Res Function(Top12MarketModel) then) =
      _$Top12MarketModelCopyWithImpl<$Res, Top12MarketModel>;
  @useResult
  $Res call(
      {int marketId,
      String marketImage,
      String marketName,
      String marketDescription,
      double averageReviewScore,
      int reviewCount});
}

/// @nodoc
class _$Top12MarketModelCopyWithImpl<$Res, $Val extends Top12MarketModel>
    implements $Top12MarketModelCopyWith<$Res> {
  _$Top12MarketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? marketImage = null,
    Object? marketName = null,
    Object? marketDescription = null,
    Object? averageReviewScore = null,
    Object? reviewCount = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      marketImage: null == marketImage
          ? _value.marketImage
          : marketImage // ignore: cast_nullable_to_non_nullable
              as String,
      marketName: null == marketName
          ? _value.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String,
      marketDescription: null == marketDescription
          ? _value.marketDescription
          : marketDescription // ignore: cast_nullable_to_non_nullable
              as String,
      averageReviewScore: null == averageReviewScore
          ? _value.averageReviewScore
          : averageReviewScore // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Top12MarketModelImplCopyWith<$Res>
    implements $Top12MarketModelCopyWith<$Res> {
  factory _$$Top12MarketModelImplCopyWith(_$Top12MarketModelImpl value,
          $Res Function(_$Top12MarketModelImpl) then) =
      __$$Top12MarketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int marketId,
      String marketImage,
      String marketName,
      String marketDescription,
      double averageReviewScore,
      int reviewCount});
}

/// @nodoc
class __$$Top12MarketModelImplCopyWithImpl<$Res>
    extends _$Top12MarketModelCopyWithImpl<$Res, _$Top12MarketModelImpl>
    implements _$$Top12MarketModelImplCopyWith<$Res> {
  __$$Top12MarketModelImplCopyWithImpl(_$Top12MarketModelImpl _value,
      $Res Function(_$Top12MarketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? marketImage = null,
    Object? marketName = null,
    Object? marketDescription = null,
    Object? averageReviewScore = null,
    Object? reviewCount = null,
  }) {
    return _then(_$Top12MarketModelImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      marketImage: null == marketImage
          ? _value.marketImage
          : marketImage // ignore: cast_nullable_to_non_nullable
              as String,
      marketName: null == marketName
          ? _value.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String,
      marketDescription: null == marketDescription
          ? _value.marketDescription
          : marketDescription // ignore: cast_nullable_to_non_nullable
              as String,
      averageReviewScore: null == averageReviewScore
          ? _value.averageReviewScore
          : averageReviewScore // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Top12MarketModelImpl implements _Top12MarketModel {
  const _$Top12MarketModelImpl(
      {required this.marketId,
      required this.marketImage,
      required this.marketName,
      required this.marketDescription,
      required this.averageReviewScore,
      required this.reviewCount});

  @override
  final int marketId;
  @override
  final String marketImage;
  @override
  final String marketName;
  @override
  final String marketDescription;
  @override
  final double averageReviewScore;
  @override
  final int reviewCount;

  @override
  String toString() {
    return 'Top12MarketModel(marketId: $marketId, marketImage: $marketImage, marketName: $marketName, marketDescription: $marketDescription, averageReviewScore: $averageReviewScore, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Top12MarketModelImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.marketImage, marketImage) ||
                other.marketImage == marketImage) &&
            (identical(other.marketName, marketName) ||
                other.marketName == marketName) &&
            (identical(other.marketDescription, marketDescription) ||
                other.marketDescription == marketDescription) &&
            (identical(other.averageReviewScore, averageReviewScore) ||
                other.averageReviewScore == averageReviewScore) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marketId, marketImage,
      marketName, marketDescription, averageReviewScore, reviewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Top12MarketModelImplCopyWith<_$Top12MarketModelImpl> get copyWith =>
      __$$Top12MarketModelImplCopyWithImpl<_$Top12MarketModelImpl>(
          this, _$identity);
}

abstract class _Top12MarketModel implements Top12MarketModel {
  const factory _Top12MarketModel(
      {required final int marketId,
      required final String marketImage,
      required final String marketName,
      required final String marketDescription,
      required final double averageReviewScore,
      required final int reviewCount}) = _$Top12MarketModelImpl;

  @override
  int get marketId;
  @override
  String get marketImage;
  @override
  String get marketName;
  @override
  String get marketDescription;
  @override
  double get averageReviewScore;
  @override
  int get reviewCount;
  @override
  @JsonKey(ignore: true)
  _$$Top12MarketModelImplCopyWith<_$Top12MarketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BestReviewModel {
  int get reviewId => throw _privateConstructorUsedError;
  int get marketId => throw _privateConstructorUsedError;
  String get writeDate => throw _privateConstructorUsedError;
  String get reviewContent => throw _privateConstructorUsedError;
  String get reviewImage => throw _privateConstructorUsedError;
  String get reviewerEmail => throw _privateConstructorUsedError;
  int get recommendCount => throw _privateConstructorUsedError;
  bool get recommendation => throw _privateConstructorUsedError;
  String get reviewerImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestReviewModelCopyWith<BestReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestReviewModelCopyWith<$Res> {
  factory $BestReviewModelCopyWith(
          BestReviewModel value, $Res Function(BestReviewModel) then) =
      _$BestReviewModelCopyWithImpl<$Res, BestReviewModel>;
  @useResult
  $Res call(
      {int reviewId,
      int marketId,
      String writeDate,
      String reviewContent,
      String reviewImage,
      String reviewerEmail,
      int recommendCount,
      bool recommendation,
      String reviewerImage});
}

/// @nodoc
class _$BestReviewModelCopyWithImpl<$Res, $Val extends BestReviewModel>
    implements $BestReviewModelCopyWith<$Res> {
  _$BestReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? marketId = null,
    Object? writeDate = null,
    Object? reviewContent = null,
    Object? reviewImage = null,
    Object? reviewerEmail = null,
    Object? recommendCount = null,
    Object? recommendation = null,
    Object? reviewerImage = null,
  }) {
    return _then(_value.copyWith(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      writeDate: null == writeDate
          ? _value.writeDate
          : writeDate // ignore: cast_nullable_to_non_nullable
              as String,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      reviewImage: null == reviewImage
          ? _value.reviewImage
          : reviewImage // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      recommendCount: null == recommendCount
          ? _value.recommendCount
          : recommendCount // ignore: cast_nullable_to_non_nullable
              as int,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewerImage: null == reviewerImage
          ? _value.reviewerImage
          : reviewerImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestReviewModelImplCopyWith<$Res>
    implements $BestReviewModelCopyWith<$Res> {
  factory _$$BestReviewModelImplCopyWith(_$BestReviewModelImpl value,
          $Res Function(_$BestReviewModelImpl) then) =
      __$$BestReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reviewId,
      int marketId,
      String writeDate,
      String reviewContent,
      String reviewImage,
      String reviewerEmail,
      int recommendCount,
      bool recommendation,
      String reviewerImage});
}

/// @nodoc
class __$$BestReviewModelImplCopyWithImpl<$Res>
    extends _$BestReviewModelCopyWithImpl<$Res, _$BestReviewModelImpl>
    implements _$$BestReviewModelImplCopyWith<$Res> {
  __$$BestReviewModelImplCopyWithImpl(
      _$BestReviewModelImpl _value, $Res Function(_$BestReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? marketId = null,
    Object? writeDate = null,
    Object? reviewContent = null,
    Object? reviewImage = null,
    Object? reviewerEmail = null,
    Object? recommendCount = null,
    Object? recommendation = null,
    Object? reviewerImage = null,
  }) {
    return _then(_$BestReviewModelImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      writeDate: null == writeDate
          ? _value.writeDate
          : writeDate // ignore: cast_nullable_to_non_nullable
              as String,
      reviewContent: null == reviewContent
          ? _value.reviewContent
          : reviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      reviewImage: null == reviewImage
          ? _value.reviewImage
          : reviewImage // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      recommendCount: null == recommendCount
          ? _value.recommendCount
          : recommendCount // ignore: cast_nullable_to_non_nullable
              as int,
      recommendation: null == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewerImage: null == reviewerImage
          ? _value.reviewerImage
          : reviewerImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BestReviewModelImpl implements _BestReviewModel {
  const _$BestReviewModelImpl(
      {required this.reviewId,
      required this.marketId,
      required this.writeDate,
      required this.reviewContent,
      required this.reviewImage,
      required this.reviewerEmail,
      required this.recommendCount,
      required this.recommendation,
      required this.reviewerImage});

  @override
  final int reviewId;
  @override
  final int marketId;
  @override
  final String writeDate;
  @override
  final String reviewContent;
  @override
  final String reviewImage;
  @override
  final String reviewerEmail;
  @override
  final int recommendCount;
  @override
  final bool recommendation;
  @override
  final String reviewerImage;

  @override
  String toString() {
    return 'BestReviewModel(reviewId: $reviewId, marketId: $marketId, writeDate: $writeDate, reviewContent: $reviewContent, reviewImage: $reviewImage, reviewerEmail: $reviewerEmail, recommendCount: $recommendCount, recommendation: $recommendation, reviewerImage: $reviewerImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestReviewModelImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.writeDate, writeDate) ||
                other.writeDate == writeDate) &&
            (identical(other.reviewContent, reviewContent) ||
                other.reviewContent == reviewContent) &&
            (identical(other.reviewImage, reviewImage) ||
                other.reviewImage == reviewImage) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail) &&
            (identical(other.recommendCount, recommendCount) ||
                other.recommendCount == recommendCount) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.reviewerImage, reviewerImage) ||
                other.reviewerImage == reviewerImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewId,
      marketId,
      writeDate,
      reviewContent,
      reviewImage,
      reviewerEmail,
      recommendCount,
      recommendation,
      reviewerImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestReviewModelImplCopyWith<_$BestReviewModelImpl> get copyWith =>
      __$$BestReviewModelImplCopyWithImpl<_$BestReviewModelImpl>(
          this, _$identity);
}

abstract class _BestReviewModel implements BestReviewModel {
  const factory _BestReviewModel(
      {required final int reviewId,
      required final int marketId,
      required final String writeDate,
      required final String reviewContent,
      required final String reviewImage,
      required final String reviewerEmail,
      required final int recommendCount,
      required final bool recommendation,
      required final String reviewerImage}) = _$BestReviewModelImpl;

  @override
  int get reviewId;
  @override
  int get marketId;
  @override
  String get writeDate;
  @override
  String get reviewContent;
  @override
  String get reviewImage;
  @override
  String get reviewerEmail;
  @override
  int get recommendCount;
  @override
  bool get recommendation;
  @override
  String get reviewerImage;
  @override
  @JsonKey(ignore: true)
  _$$BestReviewModelImplCopyWith<_$BestReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TourismModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get introduce => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourismModelCopyWith<TourismModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismModelCopyWith<$Res> {
  factory $TourismModelCopyWith(
          TourismModel value, $Res Function(TourismModel) then) =
      _$TourismModelCopyWithImpl<$Res, TourismModel>;
  @useResult
  $Res call({String imageUrl, String tags, String introduce});
}

/// @nodoc
class _$TourismModelCopyWithImpl<$Res, $Val extends TourismModel>
    implements $TourismModelCopyWith<$Res> {
  _$TourismModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? tags = null,
    Object? introduce = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourismModelImplCopyWith<$Res>
    implements $TourismModelCopyWith<$Res> {
  factory _$$TourismModelImplCopyWith(
          _$TourismModelImpl value, $Res Function(_$TourismModelImpl) then) =
      __$$TourismModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String tags, String introduce});
}

/// @nodoc
class __$$TourismModelImplCopyWithImpl<$Res>
    extends _$TourismModelCopyWithImpl<$Res, _$TourismModelImpl>
    implements _$$TourismModelImplCopyWith<$Res> {
  __$$TourismModelImplCopyWithImpl(
      _$TourismModelImpl _value, $Res Function(_$TourismModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? tags = null,
    Object? introduce = null,
  }) {
    return _then(_$TourismModelImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourismModelImpl implements _TourismModel {
  const _$TourismModelImpl(
      {required this.imageUrl, required this.tags, required this.introduce});

  @override
  final String imageUrl;
  @override
  final String tags;
  @override
  final String introduce;

  @override
  String toString() {
    return 'TourismModel(imageUrl: $imageUrl, tags: $tags, introduce: $introduce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourismModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, tags, introduce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourismModelImplCopyWith<_$TourismModelImpl> get copyWith =>
      __$$TourismModelImplCopyWithImpl<_$TourismModelImpl>(this, _$identity);
}

abstract class _TourismModel implements TourismModel {
  const factory _TourismModel(
      {required final String imageUrl,
      required final String tags,
      required final String introduce}) = _$TourismModelImpl;

  @override
  String get imageUrl;
  @override
  String get tags;
  @override
  String get introduce;
  @override
  @JsonKey(ignore: true)
  _$$TourismModelImplCopyWith<_$TourismModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestModel {
  int get level => throw _privateConstructorUsedError;
  int get expValue => throw _privateConstructorUsedError;
  int get weightPreviousLevel => throw _privateConstructorUsedError;
  int get weightCurrentLevel => throw _privateConstructorUsedError;
  int get weightNextLevel => throw _privateConstructorUsedError;
  int get gainExpPreviousLevel => throw _privateConstructorUsedError;
  int get gainExpCurrentLevel => throw _privateConstructorUsedError;
  int get gainExpNextLevel => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestModelCopyWith<QuestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestModelCopyWith<$Res> {
  factory $QuestModelCopyWith(
          QuestModel value, $Res Function(QuestModel) then) =
      _$QuestModelCopyWithImpl<$Res, QuestModel>;
  @useResult
  $Res call(
      {int level,
      int expValue,
      int weightPreviousLevel,
      int weightCurrentLevel,
      int weightNextLevel,
      int gainExpPreviousLevel,
      int gainExpCurrentLevel,
      int gainExpNextLevel,
      String message});
}

/// @nodoc
class _$QuestModelCopyWithImpl<$Res, $Val extends QuestModel>
    implements $QuestModelCopyWith<$Res> {
  _$QuestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? expValue = null,
    Object? weightPreviousLevel = null,
    Object? weightCurrentLevel = null,
    Object? weightNextLevel = null,
    Object? gainExpPreviousLevel = null,
    Object? gainExpCurrentLevel = null,
    Object? gainExpNextLevel = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      expValue: null == expValue
          ? _value.expValue
          : expValue // ignore: cast_nullable_to_non_nullable
              as int,
      weightPreviousLevel: null == weightPreviousLevel
          ? _value.weightPreviousLevel
          : weightPreviousLevel // ignore: cast_nullable_to_non_nullable
              as int,
      weightCurrentLevel: null == weightCurrentLevel
          ? _value.weightCurrentLevel
          : weightCurrentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      weightNextLevel: null == weightNextLevel
          ? _value.weightNextLevel
          : weightNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpPreviousLevel: null == gainExpPreviousLevel
          ? _value.gainExpPreviousLevel
          : gainExpPreviousLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpCurrentLevel: null == gainExpCurrentLevel
          ? _value.gainExpCurrentLevel
          : gainExpCurrentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpNextLevel: null == gainExpNextLevel
          ? _value.gainExpNextLevel
          : gainExpNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestModelImplCopyWith<$Res>
    implements $QuestModelCopyWith<$Res> {
  factory _$$QuestModelImplCopyWith(
          _$QuestModelImpl value, $Res Function(_$QuestModelImpl) then) =
      __$$QuestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int level,
      int expValue,
      int weightPreviousLevel,
      int weightCurrentLevel,
      int weightNextLevel,
      int gainExpPreviousLevel,
      int gainExpCurrentLevel,
      int gainExpNextLevel,
      String message});
}

/// @nodoc
class __$$QuestModelImplCopyWithImpl<$Res>
    extends _$QuestModelCopyWithImpl<$Res, _$QuestModelImpl>
    implements _$$QuestModelImplCopyWith<$Res> {
  __$$QuestModelImplCopyWithImpl(
      _$QuestModelImpl _value, $Res Function(_$QuestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? expValue = null,
    Object? weightPreviousLevel = null,
    Object? weightCurrentLevel = null,
    Object? weightNextLevel = null,
    Object? gainExpPreviousLevel = null,
    Object? gainExpCurrentLevel = null,
    Object? gainExpNextLevel = null,
    Object? message = null,
  }) {
    return _then(_$QuestModelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      expValue: null == expValue
          ? _value.expValue
          : expValue // ignore: cast_nullable_to_non_nullable
              as int,
      weightPreviousLevel: null == weightPreviousLevel
          ? _value.weightPreviousLevel
          : weightPreviousLevel // ignore: cast_nullable_to_non_nullable
              as int,
      weightCurrentLevel: null == weightCurrentLevel
          ? _value.weightCurrentLevel
          : weightCurrentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      weightNextLevel: null == weightNextLevel
          ? _value.weightNextLevel
          : weightNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpPreviousLevel: null == gainExpPreviousLevel
          ? _value.gainExpPreviousLevel
          : gainExpPreviousLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpCurrentLevel: null == gainExpCurrentLevel
          ? _value.gainExpCurrentLevel
          : gainExpCurrentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      gainExpNextLevel: null == gainExpNextLevel
          ? _value.gainExpNextLevel
          : gainExpNextLevel // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestModelImpl implements _QuestModel {
  const _$QuestModelImpl(
      {required this.level,
      required this.expValue,
      required this.weightPreviousLevel,
      required this.weightCurrentLevel,
      required this.weightNextLevel,
      required this.gainExpPreviousLevel,
      required this.gainExpCurrentLevel,
      required this.gainExpNextLevel,
      required this.message});

  @override
  final int level;
  @override
  final int expValue;
  @override
  final int weightPreviousLevel;
  @override
  final int weightCurrentLevel;
  @override
  final int weightNextLevel;
  @override
  final int gainExpPreviousLevel;
  @override
  final int gainExpCurrentLevel;
  @override
  final int gainExpNextLevel;
  @override
  final String message;

  @override
  String toString() {
    return 'QuestModel(level: $level, expValue: $expValue, weightPreviousLevel: $weightPreviousLevel, weightCurrentLevel: $weightCurrentLevel, weightNextLevel: $weightNextLevel, gainExpPreviousLevel: $gainExpPreviousLevel, gainExpCurrentLevel: $gainExpCurrentLevel, gainExpNextLevel: $gainExpNextLevel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestModelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.expValue, expValue) ||
                other.expValue == expValue) &&
            (identical(other.weightPreviousLevel, weightPreviousLevel) ||
                other.weightPreviousLevel == weightPreviousLevel) &&
            (identical(other.weightCurrentLevel, weightCurrentLevel) ||
                other.weightCurrentLevel == weightCurrentLevel) &&
            (identical(other.weightNextLevel, weightNextLevel) ||
                other.weightNextLevel == weightNextLevel) &&
            (identical(other.gainExpPreviousLevel, gainExpPreviousLevel) ||
                other.gainExpPreviousLevel == gainExpPreviousLevel) &&
            (identical(other.gainExpCurrentLevel, gainExpCurrentLevel) ||
                other.gainExpCurrentLevel == gainExpCurrentLevel) &&
            (identical(other.gainExpNextLevel, gainExpNextLevel) ||
                other.gainExpNextLevel == gainExpNextLevel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      expValue,
      weightPreviousLevel,
      weightCurrentLevel,
      weightNextLevel,
      gainExpPreviousLevel,
      gainExpCurrentLevel,
      gainExpNextLevel,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestModelImplCopyWith<_$QuestModelImpl> get copyWith =>
      __$$QuestModelImplCopyWithImpl<_$QuestModelImpl>(this, _$identity);
}

abstract class _QuestModel implements QuestModel {
  const factory _QuestModel(
      {required final int level,
      required final int expValue,
      required final int weightPreviousLevel,
      required final int weightCurrentLevel,
      required final int weightNextLevel,
      required final int gainExpPreviousLevel,
      required final int gainExpCurrentLevel,
      required final int gainExpNextLevel,
      required final String message}) = _$QuestModelImpl;

  @override
  int get level;
  @override
  int get expValue;
  @override
  int get weightPreviousLevel;
  @override
  int get weightCurrentLevel;
  @override
  int get weightNextLevel;
  @override
  int get gainExpPreviousLevel;
  @override
  int get gainExpCurrentLevel;
  @override
  int get gainExpNextLevel;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$QuestModelImplCopyWith<_$QuestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestLevelModel {
  int get level => throw _privateConstructorUsedError;
  int get totalExp => throw _privateConstructorUsedError;
  int get currentLevelExp => throw _privateConstructorUsedError;
  int get nextLevelExp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestLevelModelCopyWith<QuestLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestLevelModelCopyWith<$Res> {
  factory $QuestLevelModelCopyWith(
          QuestLevelModel value, $Res Function(QuestLevelModel) then) =
      _$QuestLevelModelCopyWithImpl<$Res, QuestLevelModel>;
  @useResult
  $Res call({int level, int totalExp, int currentLevelExp, int nextLevelExp});
}

/// @nodoc
class _$QuestLevelModelCopyWithImpl<$Res, $Val extends QuestLevelModel>
    implements $QuestLevelModelCopyWith<$Res> {
  _$QuestLevelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalExp = null,
    Object? currentLevelExp = null,
    Object? nextLevelExp = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalExp: null == totalExp
          ? _value.totalExp
          : totalExp // ignore: cast_nullable_to_non_nullable
              as int,
      currentLevelExp: null == currentLevelExp
          ? _value.currentLevelExp
          : currentLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
      nextLevelExp: null == nextLevelExp
          ? _value.nextLevelExp
          : nextLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestLevelModelImplCopyWith<$Res>
    implements $QuestLevelModelCopyWith<$Res> {
  factory _$$QuestLevelModelImplCopyWith(_$QuestLevelModelImpl value,
          $Res Function(_$QuestLevelModelImpl) then) =
      __$$QuestLevelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int totalExp, int currentLevelExp, int nextLevelExp});
}

/// @nodoc
class __$$QuestLevelModelImplCopyWithImpl<$Res>
    extends _$QuestLevelModelCopyWithImpl<$Res, _$QuestLevelModelImpl>
    implements _$$QuestLevelModelImplCopyWith<$Res> {
  __$$QuestLevelModelImplCopyWithImpl(
      _$QuestLevelModelImpl _value, $Res Function(_$QuestLevelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalExp = null,
    Object? currentLevelExp = null,
    Object? nextLevelExp = null,
  }) {
    return _then(_$QuestLevelModelImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      totalExp: null == totalExp
          ? _value.totalExp
          : totalExp // ignore: cast_nullable_to_non_nullable
              as int,
      currentLevelExp: null == currentLevelExp
          ? _value.currentLevelExp
          : currentLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
      nextLevelExp: null == nextLevelExp
          ? _value.nextLevelExp
          : nextLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestLevelModelImpl implements _QuestLevelModel {
  const _$QuestLevelModelImpl(
      {required this.level,
      required this.totalExp,
      required this.currentLevelExp,
      required this.nextLevelExp});

  @override
  final int level;
  @override
  final int totalExp;
  @override
  final int currentLevelExp;
  @override
  final int nextLevelExp;

  @override
  String toString() {
    return 'QuestLevelModel(level: $level, totalExp: $totalExp, currentLevelExp: $currentLevelExp, nextLevelExp: $nextLevelExp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestLevelModelImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalExp, totalExp) ||
                other.totalExp == totalExp) &&
            (identical(other.currentLevelExp, currentLevelExp) ||
                other.currentLevelExp == currentLevelExp) &&
            (identical(other.nextLevelExp, nextLevelExp) ||
                other.nextLevelExp == nextLevelExp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, level, totalExp, currentLevelExp, nextLevelExp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestLevelModelImplCopyWith<_$QuestLevelModelImpl> get copyWith =>
      __$$QuestLevelModelImplCopyWithImpl<_$QuestLevelModelImpl>(
          this, _$identity);
}

abstract class _QuestLevelModel implements QuestLevelModel {
  const factory _QuestLevelModel(
      {required final int level,
      required final int totalExp,
      required final int currentLevelExp,
      required final int nextLevelExp}) = _$QuestLevelModelImpl;

  @override
  int get level;
  @override
  int get totalExp;
  @override
  int get currentLevelExp;
  @override
  int get nextLevelExp;
  @override
  @JsonKey(ignore: true)
  _$$QuestLevelModelImplCopyWith<_$QuestLevelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

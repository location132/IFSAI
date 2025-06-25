// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewStoresResponse _$NewStoresResponseFromJson(Map<String, dynamic> json) {
  return _NewStoresResponse.fromJson(json);
}

/// @nodoc
mixin _$NewStoresResponse {
  List<NewStoreData> get stores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewStoresResponseCopyWith<NewStoresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStoresResponseCopyWith<$Res> {
  factory $NewStoresResponseCopyWith(
          NewStoresResponse value, $Res Function(NewStoresResponse) then) =
      _$NewStoresResponseCopyWithImpl<$Res, NewStoresResponse>;
  @useResult
  $Res call({List<NewStoreData> stores});
}

/// @nodoc
class _$NewStoresResponseCopyWithImpl<$Res, $Val extends NewStoresResponse>
    implements $NewStoresResponseCopyWith<$Res> {
  _$NewStoresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_value.copyWith(
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<NewStoreData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewStoresResponseImplCopyWith<$Res>
    implements $NewStoresResponseCopyWith<$Res> {
  factory _$$NewStoresResponseImplCopyWith(_$NewStoresResponseImpl value,
          $Res Function(_$NewStoresResponseImpl) then) =
      __$$NewStoresResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewStoreData> stores});
}

/// @nodoc
class __$$NewStoresResponseImplCopyWithImpl<$Res>
    extends _$NewStoresResponseCopyWithImpl<$Res, _$NewStoresResponseImpl>
    implements _$$NewStoresResponseImplCopyWith<$Res> {
  __$$NewStoresResponseImplCopyWithImpl(_$NewStoresResponseImpl _value,
      $Res Function(_$NewStoresResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_$NewStoresResponseImpl(
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<NewStoreData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewStoresResponseImpl extends _NewStoresResponse {
  const _$NewStoresResponseImpl({final List<NewStoreData> stores = const []})
      : _stores = stores,
        super._();

  factory _$NewStoresResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewStoresResponseImplFromJson(json);

  final List<NewStoreData> _stores;
  @override
  @JsonKey()
  List<NewStoreData> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'NewStoresResponse(stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewStoresResponseImpl &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewStoresResponseImplCopyWith<_$NewStoresResponseImpl> get copyWith =>
      __$$NewStoresResponseImplCopyWithImpl<_$NewStoresResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewStoresResponseImplToJson(
      this,
    );
  }
}

abstract class _NewStoresResponse extends NewStoresResponse {
  const factory _NewStoresResponse({final List<NewStoreData> stores}) =
      _$NewStoresResponseImpl;
  const _NewStoresResponse._() : super._();

  factory _NewStoresResponse.fromJson(Map<String, dynamic> json) =
      _$NewStoresResponseImpl.fromJson;

  @override
  List<NewStoreData> get stores;
  @override
  @JsonKey(ignore: true)
  _$$NewStoresResponseImplCopyWith<_$NewStoresResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewStoreData _$NewStoreDataFromJson(Map<String, dynamic> json) {
  return _NewStoreData.fromJson(json);
}

/// @nodoc
mixin _$NewStoreData {
  int get marketId => throw _privateConstructorUsedError;
  double get locationX => throw _privateConstructorUsedError;
  double get locationY => throw _privateConstructorUsedError;
  String get marketImage => throw _privateConstructorUsedError;
  String get marketName => throw _privateConstructorUsedError;
  String get marketDescription => throw _privateConstructorUsedError;
  String get detailAddress => throw _privateConstructorUsedError;
  String? get eventMessage => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closeTime => throw _privateConstructorUsedError;
  String get closedDays => throw _privateConstructorUsedError;
  double get averageReviewScore => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  int get maxDiscountRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewStoreDataCopyWith<NewStoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStoreDataCopyWith<$Res> {
  factory $NewStoreDataCopyWith(
          NewStoreData value, $Res Function(NewStoreData) then) =
      _$NewStoreDataCopyWithImpl<$Res, NewStoreData>;
  @useResult
  $Res call(
      {int marketId,
      double locationX,
      double locationY,
      String marketImage,
      String marketName,
      String marketDescription,
      String detailAddress,
      String? eventMessage,
      String openTime,
      String closeTime,
      String closedDays,
      double averageReviewScore,
      int reviewCount,
      int maxDiscountRate});
}

/// @nodoc
class _$NewStoreDataCopyWithImpl<$Res, $Val extends NewStoreData>
    implements $NewStoreDataCopyWith<$Res> {
  _$NewStoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? locationX = null,
    Object? locationY = null,
    Object? marketImage = null,
    Object? marketName = null,
    Object? marketDescription = null,
    Object? detailAddress = null,
    Object? eventMessage = freezed,
    Object? openTime = null,
    Object? closeTime = null,
    Object? closedDays = null,
    Object? averageReviewScore = null,
    Object? reviewCount = null,
    Object? maxDiscountRate = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      locationX: null == locationX
          ? _value.locationX
          : locationX // ignore: cast_nullable_to_non_nullable
              as double,
      locationY: null == locationY
          ? _value.locationY
          : locationY // ignore: cast_nullable_to_non_nullable
              as double,
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
      detailAddress: null == detailAddress
          ? _value.detailAddress
          : detailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      eventMessage: freezed == eventMessage
          ? _value.eventMessage
          : eventMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      closedDays: null == closedDays
          ? _value.closedDays
          : closedDays // ignore: cast_nullable_to_non_nullable
              as String,
      averageReviewScore: null == averageReviewScore
          ? _value.averageReviewScore
          : averageReviewScore // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxDiscountRate: null == maxDiscountRate
          ? _value.maxDiscountRate
          : maxDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewStoreDataImplCopyWith<$Res>
    implements $NewStoreDataCopyWith<$Res> {
  factory _$$NewStoreDataImplCopyWith(
          _$NewStoreDataImpl value, $Res Function(_$NewStoreDataImpl) then) =
      __$$NewStoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int marketId,
      double locationX,
      double locationY,
      String marketImage,
      String marketName,
      String marketDescription,
      String detailAddress,
      String? eventMessage,
      String openTime,
      String closeTime,
      String closedDays,
      double averageReviewScore,
      int reviewCount,
      int maxDiscountRate});
}

/// @nodoc
class __$$NewStoreDataImplCopyWithImpl<$Res>
    extends _$NewStoreDataCopyWithImpl<$Res, _$NewStoreDataImpl>
    implements _$$NewStoreDataImplCopyWith<$Res> {
  __$$NewStoreDataImplCopyWithImpl(
      _$NewStoreDataImpl _value, $Res Function(_$NewStoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? locationX = null,
    Object? locationY = null,
    Object? marketImage = null,
    Object? marketName = null,
    Object? marketDescription = null,
    Object? detailAddress = null,
    Object? eventMessage = freezed,
    Object? openTime = null,
    Object? closeTime = null,
    Object? closedDays = null,
    Object? averageReviewScore = null,
    Object? reviewCount = null,
    Object? maxDiscountRate = null,
  }) {
    return _then(_$NewStoreDataImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as int,
      locationX: null == locationX
          ? _value.locationX
          : locationX // ignore: cast_nullable_to_non_nullable
              as double,
      locationY: null == locationY
          ? _value.locationY
          : locationY // ignore: cast_nullable_to_non_nullable
              as double,
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
      detailAddress: null == detailAddress
          ? _value.detailAddress
          : detailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      eventMessage: freezed == eventMessage
          ? _value.eventMessage
          : eventMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      closedDays: null == closedDays
          ? _value.closedDays
          : closedDays // ignore: cast_nullable_to_non_nullable
              as String,
      averageReviewScore: null == averageReviewScore
          ? _value.averageReviewScore
          : averageReviewScore // ignore: cast_nullable_to_non_nullable
              as double,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxDiscountRate: null == maxDiscountRate
          ? _value.maxDiscountRate
          : maxDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewStoreDataImpl implements _NewStoreData {
  const _$NewStoreDataImpl(
      {required this.marketId,
      required this.locationX,
      required this.locationY,
      required this.marketImage,
      required this.marketName,
      required this.marketDescription,
      required this.detailAddress,
      this.eventMessage,
      required this.openTime,
      required this.closeTime,
      required this.closedDays,
      required this.averageReviewScore,
      required this.reviewCount,
      required this.maxDiscountRate});

  factory _$NewStoreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewStoreDataImplFromJson(json);

  @override
  final int marketId;
  @override
  final double locationX;
  @override
  final double locationY;
  @override
  final String marketImage;
  @override
  final String marketName;
  @override
  final String marketDescription;
  @override
  final String detailAddress;
  @override
  final String? eventMessage;
  @override
  final String openTime;
  @override
  final String closeTime;
  @override
  final String closedDays;
  @override
  final double averageReviewScore;
  @override
  final int reviewCount;
  @override
  final int maxDiscountRate;

  @override
  String toString() {
    return 'NewStoreData(marketId: $marketId, locationX: $locationX, locationY: $locationY, marketImage: $marketImage, marketName: $marketName, marketDescription: $marketDescription, detailAddress: $detailAddress, eventMessage: $eventMessage, openTime: $openTime, closeTime: $closeTime, closedDays: $closedDays, averageReviewScore: $averageReviewScore, reviewCount: $reviewCount, maxDiscountRate: $maxDiscountRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewStoreDataImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.locationX, locationX) ||
                other.locationX == locationX) &&
            (identical(other.locationY, locationY) ||
                other.locationY == locationY) &&
            (identical(other.marketImage, marketImage) ||
                other.marketImage == marketImage) &&
            (identical(other.marketName, marketName) ||
                other.marketName == marketName) &&
            (identical(other.marketDescription, marketDescription) ||
                other.marketDescription == marketDescription) &&
            (identical(other.detailAddress, detailAddress) ||
                other.detailAddress == detailAddress) &&
            (identical(other.eventMessage, eventMessage) ||
                other.eventMessage == eventMessage) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.closedDays, closedDays) ||
                other.closedDays == closedDays) &&
            (identical(other.averageReviewScore, averageReviewScore) ||
                other.averageReviewScore == averageReviewScore) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.maxDiscountRate, maxDiscountRate) ||
                other.maxDiscountRate == maxDiscountRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketId,
      locationX,
      locationY,
      marketImage,
      marketName,
      marketDescription,
      detailAddress,
      eventMessage,
      openTime,
      closeTime,
      closedDays,
      averageReviewScore,
      reviewCount,
      maxDiscountRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewStoreDataImplCopyWith<_$NewStoreDataImpl> get copyWith =>
      __$$NewStoreDataImplCopyWithImpl<_$NewStoreDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewStoreDataImplToJson(
      this,
    );
  }
}

abstract class _NewStoreData implements NewStoreData {
  const factory _NewStoreData(
      {required final int marketId,
      required final double locationX,
      required final double locationY,
      required final String marketImage,
      required final String marketName,
      required final String marketDescription,
      required final String detailAddress,
      final String? eventMessage,
      required final String openTime,
      required final String closeTime,
      required final String closedDays,
      required final double averageReviewScore,
      required final int reviewCount,
      required final int maxDiscountRate}) = _$NewStoreDataImpl;

  factory _NewStoreData.fromJson(Map<String, dynamic> json) =
      _$NewStoreDataImpl.fromJson;

  @override
  int get marketId;
  @override
  double get locationX;
  @override
  double get locationY;
  @override
  String get marketImage;
  @override
  String get marketName;
  @override
  String get marketDescription;
  @override
  String get detailAddress;
  @override
  String? get eventMessage;
  @override
  String get openTime;
  @override
  String get closeTime;
  @override
  String get closedDays;
  @override
  double get averageReviewScore;
  @override
  int get reviewCount;
  @override
  int get maxDiscountRate;
  @override
  @JsonKey(ignore: true)
  _$$NewStoreDataImplCopyWith<_$NewStoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Top12StoresResponse _$Top12StoresResponseFromJson(Map<String, dynamic> json) {
  return _Top12StoresResponse.fromJson(json);
}

/// @nodoc
mixin _$Top12StoresResponse {
  List<Top12StoreData> get stores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Top12StoresResponseCopyWith<Top12StoresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Top12StoresResponseCopyWith<$Res> {
  factory $Top12StoresResponseCopyWith(
          Top12StoresResponse value, $Res Function(Top12StoresResponse) then) =
      _$Top12StoresResponseCopyWithImpl<$Res, Top12StoresResponse>;
  @useResult
  $Res call({List<Top12StoreData> stores});
}

/// @nodoc
class _$Top12StoresResponseCopyWithImpl<$Res, $Val extends Top12StoresResponse>
    implements $Top12StoresResponseCopyWith<$Res> {
  _$Top12StoresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_value.copyWith(
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Top12StoreData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Top12StoresResponseImplCopyWith<$Res>
    implements $Top12StoresResponseCopyWith<$Res> {
  factory _$$Top12StoresResponseImplCopyWith(_$Top12StoresResponseImpl value,
          $Res Function(_$Top12StoresResponseImpl) then) =
      __$$Top12StoresResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Top12StoreData> stores});
}

/// @nodoc
class __$$Top12StoresResponseImplCopyWithImpl<$Res>
    extends _$Top12StoresResponseCopyWithImpl<$Res, _$Top12StoresResponseImpl>
    implements _$$Top12StoresResponseImplCopyWith<$Res> {
  __$$Top12StoresResponseImplCopyWithImpl(_$Top12StoresResponseImpl _value,
      $Res Function(_$Top12StoresResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stores = null,
  }) {
    return _then(_$Top12StoresResponseImpl(
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Top12StoreData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Top12StoresResponseImpl extends _Top12StoresResponse {
  const _$Top12StoresResponseImpl(
      {final List<Top12StoreData> stores = const []})
      : _stores = stores,
        super._();

  factory _$Top12StoresResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$Top12StoresResponseImplFromJson(json);

  final List<Top12StoreData> _stores;
  @override
  @JsonKey()
  List<Top12StoreData> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'Top12StoresResponse(stores: $stores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Top12StoresResponseImpl &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Top12StoresResponseImplCopyWith<_$Top12StoresResponseImpl> get copyWith =>
      __$$Top12StoresResponseImplCopyWithImpl<_$Top12StoresResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Top12StoresResponseImplToJson(
      this,
    );
  }
}

abstract class _Top12StoresResponse extends Top12StoresResponse {
  const factory _Top12StoresResponse({final List<Top12StoreData> stores}) =
      _$Top12StoresResponseImpl;
  const _Top12StoresResponse._() : super._();

  factory _Top12StoresResponse.fromJson(Map<String, dynamic> json) =
      _$Top12StoresResponseImpl.fromJson;

  @override
  List<Top12StoreData> get stores;
  @override
  @JsonKey(ignore: true)
  _$$Top12StoresResponseImplCopyWith<_$Top12StoresResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Top12StoreData _$Top12StoreDataFromJson(Map<String, dynamic> json) {
  return _Top12StoreData.fromJson(json);
}

/// @nodoc
mixin _$Top12StoreData {
  int get marketId => throw _privateConstructorUsedError;
  String get marketImage => throw _privateConstructorUsedError;
  String get marketName => throw _privateConstructorUsedError;
  String get marketDescription => throw _privateConstructorUsedError;
  double get averageReviewScore => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Top12StoreDataCopyWith<Top12StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Top12StoreDataCopyWith<$Res> {
  factory $Top12StoreDataCopyWith(
          Top12StoreData value, $Res Function(Top12StoreData) then) =
      _$Top12StoreDataCopyWithImpl<$Res, Top12StoreData>;
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
class _$Top12StoreDataCopyWithImpl<$Res, $Val extends Top12StoreData>
    implements $Top12StoreDataCopyWith<$Res> {
  _$Top12StoreDataCopyWithImpl(this._value, this._then);

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
abstract class _$$Top12StoreDataImplCopyWith<$Res>
    implements $Top12StoreDataCopyWith<$Res> {
  factory _$$Top12StoreDataImplCopyWith(_$Top12StoreDataImpl value,
          $Res Function(_$Top12StoreDataImpl) then) =
      __$$Top12StoreDataImplCopyWithImpl<$Res>;
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
class __$$Top12StoreDataImplCopyWithImpl<$Res>
    extends _$Top12StoreDataCopyWithImpl<$Res, _$Top12StoreDataImpl>
    implements _$$Top12StoreDataImplCopyWith<$Res> {
  __$$Top12StoreDataImplCopyWithImpl(
      _$Top12StoreDataImpl _value, $Res Function(_$Top12StoreDataImpl) _then)
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
    return _then(_$Top12StoreDataImpl(
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
@JsonSerializable()
class _$Top12StoreDataImpl implements _Top12StoreData {
  const _$Top12StoreDataImpl(
      {required this.marketId,
      required this.marketImage,
      required this.marketName,
      required this.marketDescription,
      required this.averageReviewScore,
      required this.reviewCount});

  factory _$Top12StoreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$Top12StoreDataImplFromJson(json);

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
    return 'Top12StoreData(marketId: $marketId, marketImage: $marketImage, marketName: $marketName, marketDescription: $marketDescription, averageReviewScore: $averageReviewScore, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Top12StoreDataImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId, marketImage,
      marketName, marketDescription, averageReviewScore, reviewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Top12StoreDataImplCopyWith<_$Top12StoreDataImpl> get copyWith =>
      __$$Top12StoreDataImplCopyWithImpl<_$Top12StoreDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Top12StoreDataImplToJson(
      this,
    );
  }
}

abstract class _Top12StoreData implements Top12StoreData {
  const factory _Top12StoreData(
      {required final int marketId,
      required final String marketImage,
      required final String marketName,
      required final String marketDescription,
      required final double averageReviewScore,
      required final int reviewCount}) = _$Top12StoreDataImpl;

  factory _Top12StoreData.fromJson(Map<String, dynamic> json) =
      _$Top12StoreDataImpl.fromJson;

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
  _$$Top12StoreDataImplCopyWith<_$Top12StoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestReviewsResponse _$BestReviewsResponseFromJson(Map<String, dynamic> json) {
  return _BestReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$BestReviewsResponse {
  List<BestReviewData> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestReviewsResponseCopyWith<BestReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestReviewsResponseCopyWith<$Res> {
  factory $BestReviewsResponseCopyWith(
          BestReviewsResponse value, $Res Function(BestReviewsResponse) then) =
      _$BestReviewsResponseCopyWithImpl<$Res, BestReviewsResponse>;
  @useResult
  $Res call({List<BestReviewData> reviews});
}

/// @nodoc
class _$BestReviewsResponseCopyWithImpl<$Res, $Val extends BestReviewsResponse>
    implements $BestReviewsResponseCopyWith<$Res> {
  _$BestReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<BestReviewData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestReviewsResponseImplCopyWith<$Res>
    implements $BestReviewsResponseCopyWith<$Res> {
  factory _$$BestReviewsResponseImplCopyWith(_$BestReviewsResponseImpl value,
          $Res Function(_$BestReviewsResponseImpl) then) =
      __$$BestReviewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BestReviewData> reviews});
}

/// @nodoc
class __$$BestReviewsResponseImplCopyWithImpl<$Res>
    extends _$BestReviewsResponseCopyWithImpl<$Res, _$BestReviewsResponseImpl>
    implements _$$BestReviewsResponseImplCopyWith<$Res> {
  __$$BestReviewsResponseImplCopyWithImpl(_$BestReviewsResponseImpl _value,
      $Res Function(_$BestReviewsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$BestReviewsResponseImpl(
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<BestReviewData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestReviewsResponseImpl extends _BestReviewsResponse {
  const _$BestReviewsResponseImpl(
      {final List<BestReviewData> reviews = const []})
      : _reviews = reviews,
        super._();

  factory _$BestReviewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestReviewsResponseImplFromJson(json);

  final List<BestReviewData> _reviews;
  @override
  @JsonKey()
  List<BestReviewData> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'BestReviewsResponse(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestReviewsResponseImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestReviewsResponseImplCopyWith<_$BestReviewsResponseImpl> get copyWith =>
      __$$BestReviewsResponseImplCopyWithImpl<_$BestReviewsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestReviewsResponseImplToJson(
      this,
    );
  }
}

abstract class _BestReviewsResponse extends BestReviewsResponse {
  const factory _BestReviewsResponse({final List<BestReviewData> reviews}) =
      _$BestReviewsResponseImpl;
  const _BestReviewsResponse._() : super._();

  factory _BestReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$BestReviewsResponseImpl.fromJson;

  @override
  List<BestReviewData> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$BestReviewsResponseImplCopyWith<_$BestReviewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestReviewData _$BestReviewDataFromJson(Map<String, dynamic> json) {
  return _BestReviewData.fromJson(json);
}

/// @nodoc
mixin _$BestReviewData {
  int get reviewId => throw _privateConstructorUsedError;
  int get marketId => throw _privateConstructorUsedError;
  String get writeDate => throw _privateConstructorUsedError;
  String get reviewContent => throw _privateConstructorUsedError;
  String get reviewerEmail => throw _privateConstructorUsedError;
  int get recommendCount => throw _privateConstructorUsedError;
  bool get recommendation => throw _privateConstructorUsedError;
  String get reviewerImage => throw _privateConstructorUsedError;
  List<ReviewImageData> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestReviewDataCopyWith<BestReviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestReviewDataCopyWith<$Res> {
  factory $BestReviewDataCopyWith(
          BestReviewData value, $Res Function(BestReviewData) then) =
      _$BestReviewDataCopyWithImpl<$Res, BestReviewData>;
  @useResult
  $Res call(
      {int reviewId,
      int marketId,
      String writeDate,
      String reviewContent,
      String reviewerEmail,
      int recommendCount,
      bool recommendation,
      String reviewerImage,
      List<ReviewImageData> images});
}

/// @nodoc
class _$BestReviewDataCopyWithImpl<$Res, $Val extends BestReviewData>
    implements $BestReviewDataCopyWith<$Res> {
  _$BestReviewDataCopyWithImpl(this._value, this._then);

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
    Object? reviewerEmail = null,
    Object? recommendCount = null,
    Object? recommendation = null,
    Object? reviewerImage = null,
    Object? images = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ReviewImageData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestReviewDataImplCopyWith<$Res>
    implements $BestReviewDataCopyWith<$Res> {
  factory _$$BestReviewDataImplCopyWith(_$BestReviewDataImpl value,
          $Res Function(_$BestReviewDataImpl) then) =
      __$$BestReviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reviewId,
      int marketId,
      String writeDate,
      String reviewContent,
      String reviewerEmail,
      int recommendCount,
      bool recommendation,
      String reviewerImage,
      List<ReviewImageData> images});
}

/// @nodoc
class __$$BestReviewDataImplCopyWithImpl<$Res>
    extends _$BestReviewDataCopyWithImpl<$Res, _$BestReviewDataImpl>
    implements _$$BestReviewDataImplCopyWith<$Res> {
  __$$BestReviewDataImplCopyWithImpl(
      _$BestReviewDataImpl _value, $Res Function(_$BestReviewDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? marketId = null,
    Object? writeDate = null,
    Object? reviewContent = null,
    Object? reviewerEmail = null,
    Object? recommendCount = null,
    Object? recommendation = null,
    Object? reviewerImage = null,
    Object? images = null,
  }) {
    return _then(_$BestReviewDataImpl(
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
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ReviewImageData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestReviewDataImpl implements _BestReviewData {
  const _$BestReviewDataImpl(
      {required this.reviewId,
      required this.marketId,
      required this.writeDate,
      required this.reviewContent,
      required this.reviewerEmail,
      required this.recommendCount,
      required this.recommendation,
      required this.reviewerImage,
      final List<ReviewImageData> images = const []})
      : _images = images;

  factory _$BestReviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestReviewDataImplFromJson(json);

  @override
  final int reviewId;
  @override
  final int marketId;
  @override
  final String writeDate;
  @override
  final String reviewContent;
  @override
  final String reviewerEmail;
  @override
  final int recommendCount;
  @override
  final bool recommendation;
  @override
  final String reviewerImage;
  final List<ReviewImageData> _images;
  @override
  @JsonKey()
  List<ReviewImageData> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'BestReviewData(reviewId: $reviewId, marketId: $marketId, writeDate: $writeDate, reviewContent: $reviewContent, reviewerEmail: $reviewerEmail, recommendCount: $recommendCount, recommendation: $recommendation, reviewerImage: $reviewerImage, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestReviewDataImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.writeDate, writeDate) ||
                other.writeDate == writeDate) &&
            (identical(other.reviewContent, reviewContent) ||
                other.reviewContent == reviewContent) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail) &&
            (identical(other.recommendCount, recommendCount) ||
                other.recommendCount == recommendCount) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.reviewerImage, reviewerImage) ||
                other.reviewerImage == reviewerImage) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewId,
      marketId,
      writeDate,
      reviewContent,
      reviewerEmail,
      recommendCount,
      recommendation,
      reviewerImage,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestReviewDataImplCopyWith<_$BestReviewDataImpl> get copyWith =>
      __$$BestReviewDataImplCopyWithImpl<_$BestReviewDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestReviewDataImplToJson(
      this,
    );
  }
}

abstract class _BestReviewData implements BestReviewData {
  const factory _BestReviewData(
      {required final int reviewId,
      required final int marketId,
      required final String writeDate,
      required final String reviewContent,
      required final String reviewerEmail,
      required final int recommendCount,
      required final bool recommendation,
      required final String reviewerImage,
      final List<ReviewImageData> images}) = _$BestReviewDataImpl;

  factory _BestReviewData.fromJson(Map<String, dynamic> json) =
      _$BestReviewDataImpl.fromJson;

  @override
  int get reviewId;
  @override
  int get marketId;
  @override
  String get writeDate;
  @override
  String get reviewContent;
  @override
  String get reviewerEmail;
  @override
  int get recommendCount;
  @override
  bool get recommendation;
  @override
  String get reviewerImage;
  @override
  List<ReviewImageData> get images;
  @override
  @JsonKey(ignore: true)
  _$$BestReviewDataImplCopyWith<_$BestReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewImageData _$ReviewImageDataFromJson(Map<String, dynamic> json) {
  return _ReviewImageData.fromJson(json);
}

/// @nodoc
mixin _$ReviewImageData {
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewImageDataCopyWith<ReviewImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewImageDataCopyWith<$Res> {
  factory $ReviewImageDataCopyWith(
          ReviewImageData value, $Res Function(ReviewImageData) then) =
      _$ReviewImageDataCopyWithImpl<$Res, ReviewImageData>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$ReviewImageDataCopyWithImpl<$Res, $Val extends ReviewImageData>
    implements $ReviewImageDataCopyWith<$Res> {
  _$ReviewImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImageDataImplCopyWith<$Res>
    implements $ReviewImageDataCopyWith<$Res> {
  factory _$$ReviewImageDataImplCopyWith(_$ReviewImageDataImpl value,
          $Res Function(_$ReviewImageDataImpl) then) =
      __$$ReviewImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$ReviewImageDataImplCopyWithImpl<$Res>
    extends _$ReviewImageDataCopyWithImpl<$Res, _$ReviewImageDataImpl>
    implements _$$ReviewImageDataImplCopyWith<$Res> {
  __$$ReviewImageDataImplCopyWithImpl(
      _$ReviewImageDataImpl _value, $Res Function(_$ReviewImageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ReviewImageDataImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImageDataImpl implements _ReviewImageData {
  const _$ReviewImageDataImpl({required this.image});

  factory _$ReviewImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImageDataImplFromJson(json);

  @override
  final String image;

  @override
  String toString() {
    return 'ReviewImageData(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImageDataImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImageDataImplCopyWith<_$ReviewImageDataImpl> get copyWith =>
      __$$ReviewImageDataImplCopyWithImpl<_$ReviewImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImageDataImplToJson(
      this,
    );
  }
}

abstract class _ReviewImageData implements ReviewImageData {
  const factory _ReviewImageData({required final String image}) =
      _$ReviewImageDataImpl;

  factory _ReviewImageData.fromJson(Map<String, dynamic> json) =
      _$ReviewImageDataImpl.fromJson;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImageDataImplCopyWith<_$ReviewImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourismDataResponse _$TourismDataResponseFromJson(Map<String, dynamic> json) {
  return _TourismDataResponse.fromJson(json);
}

/// @nodoc
mixin _$TourismDataResponse {
  List<TourismData> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourismDataResponseCopyWith<TourismDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismDataResponseCopyWith<$Res> {
  factory $TourismDataResponseCopyWith(
          TourismDataResponse value, $Res Function(TourismDataResponse) then) =
      _$TourismDataResponseCopyWithImpl<$Res, TourismDataResponse>;
  @useResult
  $Res call({List<TourismData> places});
}

/// @nodoc
class _$TourismDataResponseCopyWithImpl<$Res, $Val extends TourismDataResponse>
    implements $TourismDataResponseCopyWith<$Res> {
  _$TourismDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<TourismData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourismDataResponseImplCopyWith<$Res>
    implements $TourismDataResponseCopyWith<$Res> {
  factory _$$TourismDataResponseImplCopyWith(_$TourismDataResponseImpl value,
          $Res Function(_$TourismDataResponseImpl) then) =
      __$$TourismDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TourismData> places});
}

/// @nodoc
class __$$TourismDataResponseImplCopyWithImpl<$Res>
    extends _$TourismDataResponseCopyWithImpl<$Res, _$TourismDataResponseImpl>
    implements _$$TourismDataResponseImplCopyWith<$Res> {
  __$$TourismDataResponseImplCopyWithImpl(_$TourismDataResponseImpl _value,
      $Res Function(_$TourismDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$TourismDataResponseImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<TourismData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourismDataResponseImpl extends _TourismDataResponse {
  const _$TourismDataResponseImpl({final List<TourismData> places = const []})
      : _places = places,
        super._();

  factory _$TourismDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourismDataResponseImplFromJson(json);

  final List<TourismData> _places;
  @override
  @JsonKey()
  List<TourismData> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'TourismDataResponse(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourismDataResponseImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourismDataResponseImplCopyWith<_$TourismDataResponseImpl> get copyWith =>
      __$$TourismDataResponseImplCopyWithImpl<_$TourismDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourismDataResponseImplToJson(
      this,
    );
  }
}

abstract class _TourismDataResponse extends TourismDataResponse {
  const factory _TourismDataResponse({final List<TourismData> places}) =
      _$TourismDataResponseImpl;
  const _TourismDataResponse._() : super._();

  factory _TourismDataResponse.fromJson(Map<String, dynamic> json) =
      _$TourismDataResponseImpl.fromJson;

  @override
  List<TourismData> get places;
  @override
  @JsonKey(ignore: true)
  _$$TourismDataResponseImplCopyWith<_$TourismDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourismData _$TourismDataFromJson(Map<String, dynamic> json) {
  return _TourismData.fromJson(json);
}

/// @nodoc
mixin _$TourismData {
  String get imageUrl => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get introduce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourismDataCopyWith<TourismData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismDataCopyWith<$Res> {
  factory $TourismDataCopyWith(
          TourismData value, $Res Function(TourismData) then) =
      _$TourismDataCopyWithImpl<$Res, TourismData>;
  @useResult
  $Res call({String imageUrl, String tags, String introduce});
}

/// @nodoc
class _$TourismDataCopyWithImpl<$Res, $Val extends TourismData>
    implements $TourismDataCopyWith<$Res> {
  _$TourismDataCopyWithImpl(this._value, this._then);

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
abstract class _$$TourismDataImplCopyWith<$Res>
    implements $TourismDataCopyWith<$Res> {
  factory _$$TourismDataImplCopyWith(
          _$TourismDataImpl value, $Res Function(_$TourismDataImpl) then) =
      __$$TourismDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String tags, String introduce});
}

/// @nodoc
class __$$TourismDataImplCopyWithImpl<$Res>
    extends _$TourismDataCopyWithImpl<$Res, _$TourismDataImpl>
    implements _$$TourismDataImplCopyWith<$Res> {
  __$$TourismDataImplCopyWithImpl(
      _$TourismDataImpl _value, $Res Function(_$TourismDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? tags = null,
    Object? introduce = null,
  }) {
    return _then(_$TourismDataImpl(
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
@JsonSerializable()
class _$TourismDataImpl implements _TourismData {
  const _$TourismDataImpl(
      {required this.imageUrl, required this.tags, required this.introduce});

  factory _$TourismDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourismDataImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String tags;
  @override
  final String introduce;

  @override
  String toString() {
    return 'TourismData(imageUrl: $imageUrl, tags: $tags, introduce: $introduce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourismDataImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, tags, introduce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourismDataImplCopyWith<_$TourismDataImpl> get copyWith =>
      __$$TourismDataImplCopyWithImpl<_$TourismDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourismDataImplToJson(
      this,
    );
  }
}

abstract class _TourismData implements TourismData {
  const factory _TourismData(
      {required final String imageUrl,
      required final String tags,
      required final String introduce}) = _$TourismDataImpl;

  factory _TourismData.fromJson(Map<String, dynamic> json) =
      _$TourismDataImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get tags;
  @override
  String get introduce;
  @override
  @JsonKey(ignore: true)
  _$$TourismDataImplCopyWith<_$TourismDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestsResponse _$QuestsResponseFromJson(Map<String, dynamic> json) {
  return _QuestsResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestsResponse {
  List<QuestData> get quests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestsResponseCopyWith<QuestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestsResponseCopyWith<$Res> {
  factory $QuestsResponseCopyWith(
          QuestsResponse value, $Res Function(QuestsResponse) then) =
      _$QuestsResponseCopyWithImpl<$Res, QuestsResponse>;
  @useResult
  $Res call({List<QuestData> quests});
}

/// @nodoc
class _$QuestsResponseCopyWithImpl<$Res, $Val extends QuestsResponse>
    implements $QuestsResponseCopyWith<$Res> {
  _$QuestsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quests = null,
  }) {
    return _then(_value.copyWith(
      quests: null == quests
          ? _value.quests
          : quests // ignore: cast_nullable_to_non_nullable
              as List<QuestData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestsResponseImplCopyWith<$Res>
    implements $QuestsResponseCopyWith<$Res> {
  factory _$$QuestsResponseImplCopyWith(_$QuestsResponseImpl value,
          $Res Function(_$QuestsResponseImpl) then) =
      __$$QuestsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestData> quests});
}

/// @nodoc
class __$$QuestsResponseImplCopyWithImpl<$Res>
    extends _$QuestsResponseCopyWithImpl<$Res, _$QuestsResponseImpl>
    implements _$$QuestsResponseImplCopyWith<$Res> {
  __$$QuestsResponseImplCopyWithImpl(
      _$QuestsResponseImpl _value, $Res Function(_$QuestsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quests = null,
  }) {
    return _then(_$QuestsResponseImpl(
      quests: null == quests
          ? _value._quests
          : quests // ignore: cast_nullable_to_non_nullable
              as List<QuestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestsResponseImpl extends _QuestsResponse {
  const _$QuestsResponseImpl({final List<QuestData> quests = const []})
      : _quests = quests,
        super._();

  factory _$QuestsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestsResponseImplFromJson(json);

  final List<QuestData> _quests;
  @override
  @JsonKey()
  List<QuestData> get quests {
    if (_quests is EqualUnmodifiableListView) return _quests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quests);
  }

  @override
  String toString() {
    return 'QuestsResponse(quests: $quests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestsResponseImpl &&
            const DeepCollectionEquality().equals(other._quests, _quests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestsResponseImplCopyWith<_$QuestsResponseImpl> get copyWith =>
      __$$QuestsResponseImplCopyWithImpl<_$QuestsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestsResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestsResponse extends QuestsResponse {
  const factory _QuestsResponse({final List<QuestData> quests}) =
      _$QuestsResponseImpl;
  const _QuestsResponse._() : super._();

  factory _QuestsResponse.fromJson(Map<String, dynamic> json) =
      _$QuestsResponseImpl.fromJson;

  @override
  List<QuestData> get quests;
  @override
  @JsonKey(ignore: true)
  _$$QuestsResponseImplCopyWith<_$QuestsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestData _$QuestDataFromJson(Map<String, dynamic> json) {
  return _QuestData.fromJson(json);
}

/// @nodoc
mixin _$QuestData {
  int get level => throw _privateConstructorUsedError;
  int get expValue => throw _privateConstructorUsedError;
  int get weightPreviousLevel => throw _privateConstructorUsedError;
  int get weightCurrentLevel => throw _privateConstructorUsedError;
  int get weightNextLevel => throw _privateConstructorUsedError;
  int get gainExpPreviousLevel => throw _privateConstructorUsedError;
  int get gainExpCurrentLevel => throw _privateConstructorUsedError;
  int get gainExpNextLevel => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestDataCopyWith<QuestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestDataCopyWith<$Res> {
  factory $QuestDataCopyWith(QuestData value, $Res Function(QuestData) then) =
      _$QuestDataCopyWithImpl<$Res, QuestData>;
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
class _$QuestDataCopyWithImpl<$Res, $Val extends QuestData>
    implements $QuestDataCopyWith<$Res> {
  _$QuestDataCopyWithImpl(this._value, this._then);

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
abstract class _$$QuestDataImplCopyWith<$Res>
    implements $QuestDataCopyWith<$Res> {
  factory _$$QuestDataImplCopyWith(
          _$QuestDataImpl value, $Res Function(_$QuestDataImpl) then) =
      __$$QuestDataImplCopyWithImpl<$Res>;
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
class __$$QuestDataImplCopyWithImpl<$Res>
    extends _$QuestDataCopyWithImpl<$Res, _$QuestDataImpl>
    implements _$$QuestDataImplCopyWith<$Res> {
  __$$QuestDataImplCopyWithImpl(
      _$QuestDataImpl _value, $Res Function(_$QuestDataImpl) _then)
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
    return _then(_$QuestDataImpl(
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
@JsonSerializable()
class _$QuestDataImpl implements _QuestData {
  const _$QuestDataImpl(
      {required this.level,
      required this.expValue,
      required this.weightPreviousLevel,
      required this.weightCurrentLevel,
      required this.weightNextLevel,
      required this.gainExpPreviousLevel,
      required this.gainExpCurrentLevel,
      required this.gainExpNextLevel,
      required this.message});

  factory _$QuestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestDataImplFromJson(json);

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
    return 'QuestData(level: $level, expValue: $expValue, weightPreviousLevel: $weightPreviousLevel, weightCurrentLevel: $weightCurrentLevel, weightNextLevel: $weightNextLevel, gainExpPreviousLevel: $gainExpPreviousLevel, gainExpCurrentLevel: $gainExpCurrentLevel, gainExpNextLevel: $gainExpNextLevel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestDataImpl &&
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

  @JsonKey(ignore: true)
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
  _$$QuestDataImplCopyWith<_$QuestDataImpl> get copyWith =>
      __$$QuestDataImplCopyWithImpl<_$QuestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestDataImplToJson(
      this,
    );
  }
}

abstract class _QuestData implements QuestData {
  const factory _QuestData(
      {required final int level,
      required final int expValue,
      required final int weightPreviousLevel,
      required final int weightCurrentLevel,
      required final int weightNextLevel,
      required final int gainExpPreviousLevel,
      required final int gainExpCurrentLevel,
      required final int gainExpNextLevel,
      required final String message}) = _$QuestDataImpl;

  factory _QuestData.fromJson(Map<String, dynamic> json) =
      _$QuestDataImpl.fromJson;

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
  _$$QuestDataImplCopyWith<_$QuestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestLevelResponse _$QuestLevelResponseFromJson(Map<String, dynamic> json) {
  return _QuestLevelResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestLevelResponse {
  int get level => throw _privateConstructorUsedError;
  int get totalExp => throw _privateConstructorUsedError;
  int get currentLevelExp => throw _privateConstructorUsedError;
  int get nextLevelExp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestLevelResponseCopyWith<QuestLevelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestLevelResponseCopyWith<$Res> {
  factory $QuestLevelResponseCopyWith(
          QuestLevelResponse value, $Res Function(QuestLevelResponse) then) =
      _$QuestLevelResponseCopyWithImpl<$Res, QuestLevelResponse>;
  @useResult
  $Res call({int level, int totalExp, int currentLevelExp, int nextLevelExp});
}

/// @nodoc
class _$QuestLevelResponseCopyWithImpl<$Res, $Val extends QuestLevelResponse>
    implements $QuestLevelResponseCopyWith<$Res> {
  _$QuestLevelResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$QuestLevelResponseImplCopyWith<$Res>
    implements $QuestLevelResponseCopyWith<$Res> {
  factory _$$QuestLevelResponseImplCopyWith(_$QuestLevelResponseImpl value,
          $Res Function(_$QuestLevelResponseImpl) then) =
      __$$QuestLevelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, int totalExp, int currentLevelExp, int nextLevelExp});
}

/// @nodoc
class __$$QuestLevelResponseImplCopyWithImpl<$Res>
    extends _$QuestLevelResponseCopyWithImpl<$Res, _$QuestLevelResponseImpl>
    implements _$$QuestLevelResponseImplCopyWith<$Res> {
  __$$QuestLevelResponseImplCopyWithImpl(_$QuestLevelResponseImpl _value,
      $Res Function(_$QuestLevelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalExp = null,
    Object? currentLevelExp = null,
    Object? nextLevelExp = null,
  }) {
    return _then(_$QuestLevelResponseImpl(
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
@JsonSerializable()
class _$QuestLevelResponseImpl extends _QuestLevelResponse {
  const _$QuestLevelResponseImpl(
      {required this.level,
      required this.totalExp,
      required this.currentLevelExp,
      required this.nextLevelExp})
      : super._();

  factory _$QuestLevelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestLevelResponseImplFromJson(json);

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
    return 'QuestLevelResponse(level: $level, totalExp: $totalExp, currentLevelExp: $currentLevelExp, nextLevelExp: $nextLevelExp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestLevelResponseImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalExp, totalExp) ||
                other.totalExp == totalExp) &&
            (identical(other.currentLevelExp, currentLevelExp) ||
                other.currentLevelExp == currentLevelExp) &&
            (identical(other.nextLevelExp, nextLevelExp) ||
                other.nextLevelExp == nextLevelExp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, level, totalExp, currentLevelExp, nextLevelExp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestLevelResponseImplCopyWith<_$QuestLevelResponseImpl> get copyWith =>
      __$$QuestLevelResponseImplCopyWithImpl<_$QuestLevelResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestLevelResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestLevelResponse extends QuestLevelResponse {
  const factory _QuestLevelResponse(
      {required final int level,
      required final int totalExp,
      required final int currentLevelExp,
      required final int nextLevelExp}) = _$QuestLevelResponseImpl;
  const _QuestLevelResponse._() : super._();

  factory _QuestLevelResponse.fromJson(Map<String, dynamic> json) =
      _$QuestLevelResponseImpl.fromJson;

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
  _$$QuestLevelResponseImplCopyWith<_$QuestLevelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

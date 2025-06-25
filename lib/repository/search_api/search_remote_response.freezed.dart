// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchHistoryResponse _$SearchHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryResponse {
  List<SearchHistoryData> get histories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryResponseCopyWith<SearchHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryResponseCopyWith<$Res> {
  factory $SearchHistoryResponseCopyWith(SearchHistoryResponse value,
          $Res Function(SearchHistoryResponse) then) =
      _$SearchHistoryResponseCopyWithImpl<$Res, SearchHistoryResponse>;
  @useResult
  $Res call({List<SearchHistoryData> histories});
}

/// @nodoc
class _$SearchHistoryResponseCopyWithImpl<$Res,
        $Val extends SearchHistoryResponse>
    implements $SearchHistoryResponseCopyWith<$Res> {
  _$SearchHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_value.copyWith(
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryResponseImplCopyWith<$Res>
    implements $SearchHistoryResponseCopyWith<$Res> {
  factory _$$SearchHistoryResponseImplCopyWith(
          _$SearchHistoryResponseImpl value,
          $Res Function(_$SearchHistoryResponseImpl) then) =
      __$$SearchHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchHistoryData> histories});
}

/// @nodoc
class __$$SearchHistoryResponseImplCopyWithImpl<$Res>
    extends _$SearchHistoryResponseCopyWithImpl<$Res,
        _$SearchHistoryResponseImpl>
    implements _$$SearchHistoryResponseImplCopyWith<$Res> {
  __$$SearchHistoryResponseImplCopyWithImpl(_$SearchHistoryResponseImpl _value,
      $Res Function(_$SearchHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_$SearchHistoryResponseImpl(
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryResponseImpl extends _SearchHistoryResponse {
  const _$SearchHistoryResponseImpl(
      {final List<SearchHistoryData> histories = const []})
      : _histories = histories,
        super._();

  factory _$SearchHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryResponseImplFromJson(json);

  final List<SearchHistoryData> _histories;
  @override
  @JsonKey()
  List<SearchHistoryData> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  String toString() {
    return 'SearchHistoryResponse(histories: $histories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_histories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryResponseImplCopyWith<_$SearchHistoryResponseImpl>
      get copyWith => __$$SearchHistoryResponseImplCopyWithImpl<
          _$SearchHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryResponse extends SearchHistoryResponse {
  const factory _SearchHistoryResponse(
      {final List<SearchHistoryData> histories}) = _$SearchHistoryResponseImpl;
  const _SearchHistoryResponse._() : super._();

  factory _SearchHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryResponseImpl.fromJson;

  @override
  List<SearchHistoryData> get histories;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryResponseImplCopyWith<_$SearchHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchHistoryData _$SearchHistoryDataFromJson(Map<String, dynamic> json) {
  return _SearchHistoryData.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryData {
  String get content => throw _privateConstructorUsedError;
  int get historyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryDataCopyWith<SearchHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryDataCopyWith<$Res> {
  factory $SearchHistoryDataCopyWith(
          SearchHistoryData value, $Res Function(SearchHistoryData) then) =
      _$SearchHistoryDataCopyWithImpl<$Res, SearchHistoryData>;
  @useResult
  $Res call({String content, int historyId});
}

/// @nodoc
class _$SearchHistoryDataCopyWithImpl<$Res, $Val extends SearchHistoryData>
    implements $SearchHistoryDataCopyWith<$Res> {
  _$SearchHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? historyId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      historyId: null == historyId
          ? _value.historyId
          : historyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryDataImplCopyWith<$Res>
    implements $SearchHistoryDataCopyWith<$Res> {
  factory _$$SearchHistoryDataImplCopyWith(_$SearchHistoryDataImpl value,
          $Res Function(_$SearchHistoryDataImpl) then) =
      __$$SearchHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, int historyId});
}

/// @nodoc
class __$$SearchHistoryDataImplCopyWithImpl<$Res>
    extends _$SearchHistoryDataCopyWithImpl<$Res, _$SearchHistoryDataImpl>
    implements _$$SearchHistoryDataImplCopyWith<$Res> {
  __$$SearchHistoryDataImplCopyWithImpl(_$SearchHistoryDataImpl _value,
      $Res Function(_$SearchHistoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? historyId = null,
  }) {
    return _then(_$SearchHistoryDataImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      historyId: null == historyId
          ? _value.historyId
          : historyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryDataImpl extends _SearchHistoryData {
  const _$SearchHistoryDataImpl(
      {required this.content, required this.historyId})
      : super._();

  factory _$SearchHistoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryDataImplFromJson(json);

  @override
  final String content;
  @override
  final int historyId;

  @override
  String toString() {
    return 'SearchHistoryData(content: $content, historyId: $historyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryDataImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.historyId, historyId) ||
                other.historyId == historyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, historyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryDataImplCopyWith<_$SearchHistoryDataImpl> get copyWith =>
      __$$SearchHistoryDataImplCopyWithImpl<_$SearchHistoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryDataImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryData extends SearchHistoryData {
  const factory _SearchHistoryData(
      {required final String content,
      required final int historyId}) = _$SearchHistoryDataImpl;
  const _SearchHistoryData._() : super._();

  factory _SearchHistoryData.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryDataImpl.fromJson;

  @override
  String get content;
  @override
  int get historyId;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryDataImplCopyWith<_$SearchHistoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopularSearchResponse _$PopularSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _PopularSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$PopularSearchResponse {
  List<PopularSearchData> get searches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularSearchResponseCopyWith<PopularSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularSearchResponseCopyWith<$Res> {
  factory $PopularSearchResponseCopyWith(PopularSearchResponse value,
          $Res Function(PopularSearchResponse) then) =
      _$PopularSearchResponseCopyWithImpl<$Res, PopularSearchResponse>;
  @useResult
  $Res call({List<PopularSearchData> searches});
}

/// @nodoc
class _$PopularSearchResponseCopyWithImpl<$Res,
        $Val extends PopularSearchResponse>
    implements $PopularSearchResponseCopyWith<$Res> {
  _$PopularSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searches = null,
  }) {
    return _then(_value.copyWith(
      searches: null == searches
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<PopularSearchData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularSearchResponseImplCopyWith<$Res>
    implements $PopularSearchResponseCopyWith<$Res> {
  factory _$$PopularSearchResponseImplCopyWith(
          _$PopularSearchResponseImpl value,
          $Res Function(_$PopularSearchResponseImpl) then) =
      __$$PopularSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PopularSearchData> searches});
}

/// @nodoc
class __$$PopularSearchResponseImplCopyWithImpl<$Res>
    extends _$PopularSearchResponseCopyWithImpl<$Res,
        _$PopularSearchResponseImpl>
    implements _$$PopularSearchResponseImplCopyWith<$Res> {
  __$$PopularSearchResponseImplCopyWithImpl(_$PopularSearchResponseImpl _value,
      $Res Function(_$PopularSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searches = null,
  }) {
    return _then(_$PopularSearchResponseImpl(
      searches: null == searches
          ? _value._searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<PopularSearchData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularSearchResponseImpl extends _PopularSearchResponse {
  const _$PopularSearchResponseImpl(
      {final List<PopularSearchData> searches = const []})
      : _searches = searches,
        super._();

  factory _$PopularSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularSearchResponseImplFromJson(json);

  final List<PopularSearchData> _searches;
  @override
  @JsonKey()
  List<PopularSearchData> get searches {
    if (_searches is EqualUnmodifiableListView) return _searches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searches);
  }

  @override
  String toString() {
    return 'PopularSearchResponse(searches: $searches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularSearchResponseImpl &&
            const DeepCollectionEquality().equals(other._searches, _searches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_searches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularSearchResponseImplCopyWith<_$PopularSearchResponseImpl>
      get copyWith => __$$PopularSearchResponseImplCopyWithImpl<
          _$PopularSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _PopularSearchResponse extends PopularSearchResponse {
  const factory _PopularSearchResponse(
      {final List<PopularSearchData> searches}) = _$PopularSearchResponseImpl;
  const _PopularSearchResponse._() : super._();

  factory _PopularSearchResponse.fromJson(Map<String, dynamic> json) =
      _$PopularSearchResponseImpl.fromJson;

  @override
  List<PopularSearchData> get searches;
  @override
  @JsonKey(ignore: true)
  _$$PopularSearchResponseImplCopyWith<_$PopularSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PopularSearchData _$PopularSearchDataFromJson(Map<String, dynamic> json) {
  return _PopularSearchData.fromJson(json);
}

/// @nodoc
mixin _$PopularSearchData {
  String get searchWord => throw _privateConstructorUsedError;
  int get rankChangeValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularSearchDataCopyWith<PopularSearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularSearchDataCopyWith<$Res> {
  factory $PopularSearchDataCopyWith(
          PopularSearchData value, $Res Function(PopularSearchData) then) =
      _$PopularSearchDataCopyWithImpl<$Res, PopularSearchData>;
  @useResult
  $Res call({String searchWord, int rankChangeValue});
}

/// @nodoc
class _$PopularSearchDataCopyWithImpl<$Res, $Val extends PopularSearchData>
    implements $PopularSearchDataCopyWith<$Res> {
  _$PopularSearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
    Object? rankChangeValue = null,
  }) {
    return _then(_value.copyWith(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      rankChangeValue: null == rankChangeValue
          ? _value.rankChangeValue
          : rankChangeValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularSearchDataImplCopyWith<$Res>
    implements $PopularSearchDataCopyWith<$Res> {
  factory _$$PopularSearchDataImplCopyWith(_$PopularSearchDataImpl value,
          $Res Function(_$PopularSearchDataImpl) then) =
      __$$PopularSearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchWord, int rankChangeValue});
}

/// @nodoc
class __$$PopularSearchDataImplCopyWithImpl<$Res>
    extends _$PopularSearchDataCopyWithImpl<$Res, _$PopularSearchDataImpl>
    implements _$$PopularSearchDataImplCopyWith<$Res> {
  __$$PopularSearchDataImplCopyWithImpl(_$PopularSearchDataImpl _value,
      $Res Function(_$PopularSearchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
    Object? rankChangeValue = null,
  }) {
    return _then(_$PopularSearchDataImpl(
      searchWord: null == searchWord
          ? _value.searchWord
          : searchWord // ignore: cast_nullable_to_non_nullable
              as String,
      rankChangeValue: null == rankChangeValue
          ? _value.rankChangeValue
          : rankChangeValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularSearchDataImpl extends _PopularSearchData {
  const _$PopularSearchDataImpl(
      {required this.searchWord, required this.rankChangeValue})
      : super._();

  factory _$PopularSearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularSearchDataImplFromJson(json);

  @override
  final String searchWord;
  @override
  final int rankChangeValue;

  @override
  String toString() {
    return 'PopularSearchData(searchWord: $searchWord, rankChangeValue: $rankChangeValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularSearchDataImpl &&
            (identical(other.searchWord, searchWord) ||
                other.searchWord == searchWord) &&
            (identical(other.rankChangeValue, rankChangeValue) ||
                other.rankChangeValue == rankChangeValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchWord, rankChangeValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularSearchDataImplCopyWith<_$PopularSearchDataImpl> get copyWith =>
      __$$PopularSearchDataImplCopyWithImpl<_$PopularSearchDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularSearchDataImplToJson(
      this,
    );
  }
}

abstract class _PopularSearchData extends PopularSearchData {
  const factory _PopularSearchData(
      {required final String searchWord,
      required final int rankChangeValue}) = _$PopularSearchDataImpl;
  const _PopularSearchData._() : super._();

  factory _PopularSearchData.fromJson(Map<String, dynamic> json) =
      _$PopularSearchDataImpl.fromJson;

  @override
  String get searchWord;
  @override
  int get rankChangeValue;
  @override
  @JsonKey(ignore: true)
  _$$PopularSearchDataImplCopyWith<_$PopularSearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedSearchResponse _$RelatedSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _RelatedSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RelatedSearchResponse {
  List<RelatedSearchData> get searches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedSearchResponseCopyWith<RelatedSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedSearchResponseCopyWith<$Res> {
  factory $RelatedSearchResponseCopyWith(RelatedSearchResponse value,
          $Res Function(RelatedSearchResponse) then) =
      _$RelatedSearchResponseCopyWithImpl<$Res, RelatedSearchResponse>;
  @useResult
  $Res call({List<RelatedSearchData> searches});
}

/// @nodoc
class _$RelatedSearchResponseCopyWithImpl<$Res,
        $Val extends RelatedSearchResponse>
    implements $RelatedSearchResponseCopyWith<$Res> {
  _$RelatedSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searches = null,
  }) {
    return _then(_value.copyWith(
      searches: null == searches
          ? _value.searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<RelatedSearchData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedSearchResponseImplCopyWith<$Res>
    implements $RelatedSearchResponseCopyWith<$Res> {
  factory _$$RelatedSearchResponseImplCopyWith(
          _$RelatedSearchResponseImpl value,
          $Res Function(_$RelatedSearchResponseImpl) then) =
      __$$RelatedSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RelatedSearchData> searches});
}

/// @nodoc
class __$$RelatedSearchResponseImplCopyWithImpl<$Res>
    extends _$RelatedSearchResponseCopyWithImpl<$Res,
        _$RelatedSearchResponseImpl>
    implements _$$RelatedSearchResponseImplCopyWith<$Res> {
  __$$RelatedSearchResponseImplCopyWithImpl(_$RelatedSearchResponseImpl _value,
      $Res Function(_$RelatedSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searches = null,
  }) {
    return _then(_$RelatedSearchResponseImpl(
      searches: null == searches
          ? _value._searches
          : searches // ignore: cast_nullable_to_non_nullable
              as List<RelatedSearchData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedSearchResponseImpl extends _RelatedSearchResponse {
  const _$RelatedSearchResponseImpl(
      {final List<RelatedSearchData> searches = const []})
      : _searches = searches,
        super._();

  factory _$RelatedSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedSearchResponseImplFromJson(json);

  final List<RelatedSearchData> _searches;
  @override
  @JsonKey()
  List<RelatedSearchData> get searches {
    if (_searches is EqualUnmodifiableListView) return _searches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searches);
  }

  @override
  String toString() {
    return 'RelatedSearchResponse(searches: $searches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedSearchResponseImpl &&
            const DeepCollectionEquality().equals(other._searches, _searches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_searches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedSearchResponseImplCopyWith<_$RelatedSearchResponseImpl>
      get copyWith => __$$RelatedSearchResponseImplCopyWithImpl<
          _$RelatedSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _RelatedSearchResponse extends RelatedSearchResponse {
  const factory _RelatedSearchResponse(
      {final List<RelatedSearchData> searches}) = _$RelatedSearchResponseImpl;
  const _RelatedSearchResponse._() : super._();

  factory _RelatedSearchResponse.fromJson(Map<String, dynamic> json) =
      _$RelatedSearchResponseImpl.fromJson;

  @override
  List<RelatedSearchData> get searches;
  @override
  @JsonKey(ignore: true)
  _$$RelatedSearchResponseImplCopyWith<_$RelatedSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RelatedSearchData _$RelatedSearchDataFromJson(Map<String, dynamic> json) {
  return _RelatedSearchData.fromJson(json);
}

/// @nodoc
mixin _$RelatedSearchData {
  String get word => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedSearchDataCopyWith<RelatedSearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedSearchDataCopyWith<$Res> {
  factory $RelatedSearchDataCopyWith(
          RelatedSearchData value, $Res Function(RelatedSearchData) then) =
      _$RelatedSearchDataCopyWithImpl<$Res, RelatedSearchData>;
  @useResult
  $Res call({String word});
}

/// @nodoc
class _$RelatedSearchDataCopyWithImpl<$Res, $Val extends RelatedSearchData>
    implements $RelatedSearchDataCopyWith<$Res> {
  _$RelatedSearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedSearchDataImplCopyWith<$Res>
    implements $RelatedSearchDataCopyWith<$Res> {
  factory _$$RelatedSearchDataImplCopyWith(_$RelatedSearchDataImpl value,
          $Res Function(_$RelatedSearchDataImpl) then) =
      __$$RelatedSearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$RelatedSearchDataImplCopyWithImpl<$Res>
    extends _$RelatedSearchDataCopyWithImpl<$Res, _$RelatedSearchDataImpl>
    implements _$$RelatedSearchDataImplCopyWith<$Res> {
  __$$RelatedSearchDataImplCopyWithImpl(_$RelatedSearchDataImpl _value,
      $Res Function(_$RelatedSearchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$RelatedSearchDataImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedSearchDataImpl implements _RelatedSearchData {
  const _$RelatedSearchDataImpl({required this.word});

  factory _$RelatedSearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedSearchDataImplFromJson(json);

  @override
  final String word;

  @override
  String toString() {
    return 'RelatedSearchData(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedSearchDataImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedSearchDataImplCopyWith<_$RelatedSearchDataImpl> get copyWith =>
      __$$RelatedSearchDataImplCopyWithImpl<_$RelatedSearchDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedSearchDataImplToJson(
      this,
    );
  }
}

abstract class _RelatedSearchData implements RelatedSearchData {
  const factory _RelatedSearchData({required final String word}) =
      _$RelatedSearchDataImpl;

  factory _RelatedSearchData.fromJson(Map<String, dynamic> json) =
      _$RelatedSearchDataImpl.fromJson;

  @override
  String get word;
  @override
  @JsonKey(ignore: true)
  _$$RelatedSearchDataImplCopyWith<_$RelatedSearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

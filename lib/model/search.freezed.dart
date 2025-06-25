// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchHistoryModel _$SearchHistoryModelFromJson(Map<String, dynamic> json) {
  return _SearchHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryModel {
  String get content => throw _privateConstructorUsedError;
  String get historyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryModelCopyWith<SearchHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryModelCopyWith<$Res> {
  factory $SearchHistoryModelCopyWith(
          SearchHistoryModel value, $Res Function(SearchHistoryModel) then) =
      _$SearchHistoryModelCopyWithImpl<$Res, SearchHistoryModel>;
  @useResult
  $Res call({String content, String historyId});
}

/// @nodoc
class _$SearchHistoryModelCopyWithImpl<$Res, $Val extends SearchHistoryModel>
    implements $SearchHistoryModelCopyWith<$Res> {
  _$SearchHistoryModelCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryModelImplCopyWith<$Res>
    implements $SearchHistoryModelCopyWith<$Res> {
  factory _$$SearchHistoryModelImplCopyWith(_$SearchHistoryModelImpl value,
          $Res Function(_$SearchHistoryModelImpl) then) =
      __$$SearchHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String historyId});
}

/// @nodoc
class __$$SearchHistoryModelImplCopyWithImpl<$Res>
    extends _$SearchHistoryModelCopyWithImpl<$Res, _$SearchHistoryModelImpl>
    implements _$$SearchHistoryModelImplCopyWith<$Res> {
  __$$SearchHistoryModelImplCopyWithImpl(_$SearchHistoryModelImpl _value,
      $Res Function(_$SearchHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? historyId = null,
  }) {
    return _then(_$SearchHistoryModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      historyId: null == historyId
          ? _value.historyId
          : historyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryModelImpl implements _SearchHistoryModel {
  const _$SearchHistoryModelImpl(
      {required this.content, required this.historyId});

  factory _$SearchHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryModelImplFromJson(json);

  @override
  final String content;
  @override
  final String historyId;

  @override
  String toString() {
    return 'SearchHistoryModel(content: $content, historyId: $historyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryModelImpl &&
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
  _$$SearchHistoryModelImplCopyWith<_$SearchHistoryModelImpl> get copyWith =>
      __$$SearchHistoryModelImplCopyWithImpl<_$SearchHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryModel implements SearchHistoryModel {
  const factory _SearchHistoryModel(
      {required final String content,
      required final String historyId}) = _$SearchHistoryModelImpl;

  factory _SearchHistoryModel.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryModelImpl.fromJson;

  @override
  String get content;
  @override
  String get historyId;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryModelImplCopyWith<_$SearchHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopularSearchModel _$PopularSearchModelFromJson(Map<String, dynamic> json) {
  return _PopularSearchModel.fromJson(json);
}

/// @nodoc
mixin _$PopularSearchModel {
  String get searchWord => throw _privateConstructorUsedError;
  int get rankChangeValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularSearchModelCopyWith<PopularSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularSearchModelCopyWith<$Res> {
  factory $PopularSearchModelCopyWith(
          PopularSearchModel value, $Res Function(PopularSearchModel) then) =
      _$PopularSearchModelCopyWithImpl<$Res, PopularSearchModel>;
  @useResult
  $Res call({String searchWord, int rankChangeValue});
}

/// @nodoc
class _$PopularSearchModelCopyWithImpl<$Res, $Val extends PopularSearchModel>
    implements $PopularSearchModelCopyWith<$Res> {
  _$PopularSearchModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PopularSearchModelImplCopyWith<$Res>
    implements $PopularSearchModelCopyWith<$Res> {
  factory _$$PopularSearchModelImplCopyWith(_$PopularSearchModelImpl value,
          $Res Function(_$PopularSearchModelImpl) then) =
      __$$PopularSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchWord, int rankChangeValue});
}

/// @nodoc
class __$$PopularSearchModelImplCopyWithImpl<$Res>
    extends _$PopularSearchModelCopyWithImpl<$Res, _$PopularSearchModelImpl>
    implements _$$PopularSearchModelImplCopyWith<$Res> {
  __$$PopularSearchModelImplCopyWithImpl(_$PopularSearchModelImpl _value,
      $Res Function(_$PopularSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchWord = null,
    Object? rankChangeValue = null,
  }) {
    return _then(_$PopularSearchModelImpl(
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
class _$PopularSearchModelImpl implements _PopularSearchModel {
  const _$PopularSearchModelImpl(
      {required this.searchWord, required this.rankChangeValue});

  factory _$PopularSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularSearchModelImplFromJson(json);

  @override
  final String searchWord;
  @override
  final int rankChangeValue;

  @override
  String toString() {
    return 'PopularSearchModel(searchWord: $searchWord, rankChangeValue: $rankChangeValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularSearchModelImpl &&
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
  _$$PopularSearchModelImplCopyWith<_$PopularSearchModelImpl> get copyWith =>
      __$$PopularSearchModelImplCopyWithImpl<_$PopularSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularSearchModelImplToJson(
      this,
    );
  }
}

abstract class _PopularSearchModel implements PopularSearchModel {
  const factory _PopularSearchModel(
      {required final String searchWord,
      required final int rankChangeValue}) = _$PopularSearchModelImpl;

  factory _PopularSearchModel.fromJson(Map<String, dynamic> json) =
      _$PopularSearchModelImpl.fromJson;

  @override
  String get searchWord;
  @override
  int get rankChangeValue;
  @override
  @JsonKey(ignore: true)
  _$$PopularSearchModelImplCopyWith<_$PopularSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

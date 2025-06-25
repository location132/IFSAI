// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginResult {
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get targetEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res, LoginResult>;
  @useResult
  $Res call(
      {bool isSuccess,
      String? accessToken,
      String? errorMessage,
      String? targetEmail});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? accessToken = freezed,
    Object? errorMessage = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultImplCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$LoginResultImplCopyWith(
          _$LoginResultImpl value, $Res Function(_$LoginResultImpl) then) =
      __$$LoginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String? accessToken,
      String? errorMessage,
      String? targetEmail});
}

/// @nodoc
class __$$LoginResultImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginResultImpl>
    implements _$$LoginResultImplCopyWith<$Res> {
  __$$LoginResultImplCopyWithImpl(
      _$LoginResultImpl _value, $Res Function(_$LoginResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? accessToken = freezed,
    Object? errorMessage = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_$LoginResultImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginResultImpl implements _LoginResult {
  const _$LoginResultImpl(
      {required this.isSuccess,
      this.accessToken,
      this.errorMessage,
      this.targetEmail});

  @override
  final bool isSuccess;
  @override
  final String? accessToken;
  @override
  final String? errorMessage;
  @override
  final String? targetEmail;

  @override
  String toString() {
    return 'LoginResult(isSuccess: $isSuccess, accessToken: $accessToken, errorMessage: $errorMessage, targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSuccess, accessToken, errorMessage, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      __$$LoginResultImplCopyWithImpl<_$LoginResultImpl>(this, _$identity);
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
      {required final bool isSuccess,
      final String? accessToken,
      final String? errorMessage,
      final String? targetEmail}) = _$LoginResultImpl;

  @override
  bool get isSuccess;
  @override
  String? get accessToken;
  @override
  String? get errorMessage;
  @override
  String? get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfile {
  String get userEmail => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool get school => throw _privateConstructorUsedError;
  int get basketCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({String userEmail, String? image, bool school, int basketCount});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? image = freezed,
    Object? school = null,
    Object? basketCount = null,
  }) {
    return _then(_value.copyWith(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as bool,
      basketCount: null == basketCount
          ? _value.basketCount
          : basketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail, String? image, bool school, int basketCount});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? image = freezed,
    Object? school = null,
    Object? basketCount = null,
  }) {
    return _then(_$UserProfileImpl(
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as bool,
      basketCount: null == basketCount
          ? _value.basketCount
          : basketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.userEmail,
      this.image,
      required this.school,
      this.basketCount = 0});

  @override
  final String userEmail;
  @override
  final String? image;
  @override
  final bool school;
  @override
  @JsonKey()
  final int basketCount;

  @override
  String toString() {
    return 'UserProfile(userEmail: $userEmail, image: $image, school: $school, basketCount: $basketCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.basketCount, basketCount) ||
                other.basketCount == basketCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userEmail, image, school, basketCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String userEmail,
      final String? image,
      required final bool school,
      final int basketCount}) = _$UserProfileImpl;

  @override
  String get userEmail;
  @override
  String? get image;
  @override
  bool get school;
  @override
  int get basketCount;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailVerificationResult {
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get targetEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailVerificationResultCopyWith<EmailVerificationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationResultCopyWith<$Res> {
  factory $EmailVerificationResultCopyWith(EmailVerificationResult value,
          $Res Function(EmailVerificationResult) then) =
      _$EmailVerificationResultCopyWithImpl<$Res, EmailVerificationResult>;
  @useResult
  $Res call({bool isSuccess, String? errorMessage, String? targetEmail});
}

/// @nodoc
class _$EmailVerificationResultCopyWithImpl<$Res,
        $Val extends EmailVerificationResult>
    implements $EmailVerificationResultCopyWith<$Res> {
  _$EmailVerificationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerificationResultImplCopyWith<$Res>
    implements $EmailVerificationResultCopyWith<$Res> {
  factory _$$EmailVerificationResultImplCopyWith(
          _$EmailVerificationResultImpl value,
          $Res Function(_$EmailVerificationResultImpl) then) =
      __$$EmailVerificationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSuccess, String? errorMessage, String? targetEmail});
}

/// @nodoc
class __$$EmailVerificationResultImplCopyWithImpl<$Res>
    extends _$EmailVerificationResultCopyWithImpl<$Res,
        _$EmailVerificationResultImpl>
    implements _$$EmailVerificationResultImplCopyWith<$Res> {
  __$$EmailVerificationResultImplCopyWithImpl(
      _$EmailVerificationResultImpl _value,
      $Res Function(_$EmailVerificationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_$EmailVerificationResultImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailVerificationResultImpl implements _EmailVerificationResult {
  const _$EmailVerificationResultImpl(
      {required this.isSuccess, this.errorMessage, this.targetEmail});

  @override
  final bool isSuccess;
  @override
  final String? errorMessage;
  @override
  final String? targetEmail;

  @override
  String toString() {
    return 'EmailVerificationResult(isSuccess: $isSuccess, errorMessage: $errorMessage, targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationResultImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, errorMessage, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationResultImplCopyWith<_$EmailVerificationResultImpl>
      get copyWith => __$$EmailVerificationResultImplCopyWithImpl<
          _$EmailVerificationResultImpl>(this, _$identity);
}

abstract class _EmailVerificationResult implements EmailVerificationResult {
  const factory _EmailVerificationResult(
      {required final bool isSuccess,
      final String? errorMessage,
      final String? targetEmail}) = _$EmailVerificationResultImpl;

  @override
  bool get isSuccess;
  @override
  String? get errorMessage;
  @override
  String? get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$EmailVerificationResultImplCopyWith<_$EmailVerificationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

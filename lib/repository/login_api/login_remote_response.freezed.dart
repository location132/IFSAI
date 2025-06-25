// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  String get status => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get targetEmail => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {String status,
      String? accessToken,
      String? targetEmail,
      String? message});
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accessToken = freezed,
    Object? targetEmail = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String? accessToken,
      String? targetEmail,
      String? message});
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accessToken = freezed,
    Object? targetEmail = freezed,
    Object? message = freezed,
  }) {
    return _then(_$LoginResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl extends _LoginResponse {
  const _$LoginResponseImpl(
      {required this.status, this.accessToken, this.targetEmail, this.message})
      : super._();

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? accessToken;
  @override
  final String? targetEmail;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginResponse(status: $status, accessToken: $accessToken, targetEmail: $targetEmail, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, accessToken, targetEmail, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse extends LoginResponse {
  const factory _LoginResponse(
      {required final String status,
      final String? accessToken,
      final String? targetEmail,
      final String? message}) = _$LoginResponseImpl;
  const _LoginResponse._() : super._();

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get accessToken;
  @override
  String? get targetEmail;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  String get userEmail => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool get school => throw _privateConstructorUsedError;
  int get basketCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call({String userEmail, String? image, bool school, int basketCount});
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UserProfileResponseImplCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$UserProfileResponseImplCopyWith(_$UserProfileResponseImpl value,
          $Res Function(_$UserProfileResponseImpl) then) =
      __$$UserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userEmail, String? image, bool school, int basketCount});
}

/// @nodoc
class __$$UserProfileResponseImplCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$UserProfileResponseImpl>
    implements _$$UserProfileResponseImplCopyWith<$Res> {
  __$$UserProfileResponseImplCopyWithImpl(_$UserProfileResponseImpl _value,
      $Res Function(_$UserProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEmail = null,
    Object? image = freezed,
    Object? school = null,
    Object? basketCount = null,
  }) {
    return _then(_$UserProfileResponseImpl(
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
@JsonSerializable()
class _$UserProfileResponseImpl extends _UserProfileResponse {
  const _$UserProfileResponseImpl(
      {required this.userEmail,
      this.image,
      required this.school,
      this.basketCount = 0})
      : super._();

  factory _$UserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseImplFromJson(json);

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
    return 'UserProfileResponse(userEmail: $userEmail, image: $image, school: $school, basketCount: $basketCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseImpl &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.basketCount, basketCount) ||
                other.basketCount == basketCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userEmail, image, school, basketCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      __$$UserProfileResponseImplCopyWithImpl<_$UserProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse extends UserProfileResponse {
  const factory _UserProfileResponse(
      {required final String userEmail,
      final String? image,
      required final bool school,
      final int basketCount}) = _$UserProfileResponseImpl;
  const _UserProfileResponse._() : super._();

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseImpl.fromJson;

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
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailVerificationResponse _$EmailVerificationResponseFromJson(
    Map<String, dynamic> json) {
  return _EmailVerificationResponse.fromJson(json);
}

/// @nodoc
mixin _$EmailVerificationResponse {
  String get status => throw _privateConstructorUsedError;
  String? get targetEmail => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailVerificationResponseCopyWith<EmailVerificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationResponseCopyWith<$Res> {
  factory $EmailVerificationResponseCopyWith(EmailVerificationResponse value,
          $Res Function(EmailVerificationResponse) then) =
      _$EmailVerificationResponseCopyWithImpl<$Res, EmailVerificationResponse>;
  @useResult
  $Res call({String status, String? targetEmail, String? message});
}

/// @nodoc
class _$EmailVerificationResponseCopyWithImpl<$Res,
        $Val extends EmailVerificationResponse>
    implements $EmailVerificationResponseCopyWith<$Res> {
  _$EmailVerificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? targetEmail = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerificationResponseImplCopyWith<$Res>
    implements $EmailVerificationResponseCopyWith<$Res> {
  factory _$$EmailVerificationResponseImplCopyWith(
          _$EmailVerificationResponseImpl value,
          $Res Function(_$EmailVerificationResponseImpl) then) =
      __$$EmailVerificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? targetEmail, String? message});
}

/// @nodoc
class __$$EmailVerificationResponseImplCopyWithImpl<$Res>
    extends _$EmailVerificationResponseCopyWithImpl<$Res,
        _$EmailVerificationResponseImpl>
    implements _$$EmailVerificationResponseImplCopyWith<$Res> {
  __$$EmailVerificationResponseImplCopyWithImpl(
      _$EmailVerificationResponseImpl _value,
      $Res Function(_$EmailVerificationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? targetEmail = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EmailVerificationResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailVerificationResponseImpl extends _EmailVerificationResponse {
  const _$EmailVerificationResponseImpl(
      {required this.status, this.targetEmail, this.message})
      : super._();

  factory _$EmailVerificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailVerificationResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? targetEmail;
  @override
  final String? message;

  @override
  String toString() {
    return 'EmailVerificationResponse(status: $status, targetEmail: $targetEmail, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, targetEmail, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationResponseImplCopyWith<_$EmailVerificationResponseImpl>
      get copyWith => __$$EmailVerificationResponseImplCopyWithImpl<
          _$EmailVerificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailVerificationResponseImplToJson(
      this,
    );
  }
}

abstract class _EmailVerificationResponse extends EmailVerificationResponse {
  const factory _EmailVerificationResponse(
      {required final String status,
      final String? targetEmail,
      final String? message}) = _$EmailVerificationResponseImpl;
  const _EmailVerificationResponse._() : super._();

  factory _EmailVerificationResponse.fromJson(Map<String, dynamic> json) =
      _$EmailVerificationResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get targetEmail;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EmailVerificationResponseImplCopyWith<_$EmailVerificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

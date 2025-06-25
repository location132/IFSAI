// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_remote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SNSLoginRequest _$SNSLoginRequestFromJson(Map<String, dynamic> json) {
  return _SNSLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$SNSLoginRequest {
  String get type => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SNSLoginRequestCopyWith<SNSLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SNSLoginRequestCopyWith<$Res> {
  factory $SNSLoginRequestCopyWith(
          SNSLoginRequest value, $Res Function(SNSLoginRequest) then) =
      _$SNSLoginRequestCopyWithImpl<$Res, SNSLoginRequest>;
  @useResult
  $Res call({String type, String accessToken});
}

/// @nodoc
class _$SNSLoginRequestCopyWithImpl<$Res, $Val extends SNSLoginRequest>
    implements $SNSLoginRequestCopyWith<$Res> {
  _$SNSLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SNSLoginRequestImplCopyWith<$Res>
    implements $SNSLoginRequestCopyWith<$Res> {
  factory _$$SNSLoginRequestImplCopyWith(_$SNSLoginRequestImpl value,
          $Res Function(_$SNSLoginRequestImpl) then) =
      __$$SNSLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String accessToken});
}

/// @nodoc
class __$$SNSLoginRequestImplCopyWithImpl<$Res>
    extends _$SNSLoginRequestCopyWithImpl<$Res, _$SNSLoginRequestImpl>
    implements _$$SNSLoginRequestImplCopyWith<$Res> {
  __$$SNSLoginRequestImplCopyWithImpl(
      _$SNSLoginRequestImpl _value, $Res Function(_$SNSLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessToken = null,
  }) {
    return _then(_$SNSLoginRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SNSLoginRequestImpl implements _SNSLoginRequest {
  const _$SNSLoginRequestImpl({required this.type, required this.accessToken});

  factory _$SNSLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SNSLoginRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'SNSLoginRequest(type: $type, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SNSLoginRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SNSLoginRequestImplCopyWith<_$SNSLoginRequestImpl> get copyWith =>
      __$$SNSLoginRequestImplCopyWithImpl<_$SNSLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SNSLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _SNSLoginRequest implements SNSLoginRequest {
  const factory _SNSLoginRequest(
      {required final String type,
      required final String accessToken}) = _$SNSLoginRequestImpl;

  factory _SNSLoginRequest.fromJson(Map<String, dynamic> json) =
      _$SNSLoginRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$SNSLoginRequestImplCopyWith<_$SNSLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeSNSLoginRequest _$ChangeSNSLoginRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangeSNSLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeSNSLoginRequest {
  String get targetEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeSNSLoginRequestCopyWith<ChangeSNSLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSNSLoginRequestCopyWith<$Res> {
  factory $ChangeSNSLoginRequestCopyWith(ChangeSNSLoginRequest value,
          $Res Function(ChangeSNSLoginRequest) then) =
      _$ChangeSNSLoginRequestCopyWithImpl<$Res, ChangeSNSLoginRequest>;
  @useResult
  $Res call({String targetEmail});
}

/// @nodoc
class _$ChangeSNSLoginRequestCopyWithImpl<$Res,
        $Val extends ChangeSNSLoginRequest>
    implements $ChangeSNSLoginRequestCopyWith<$Res> {
  _$ChangeSNSLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetEmail = null,
  }) {
    return _then(_value.copyWith(
      targetEmail: null == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeSNSLoginRequestImplCopyWith<$Res>
    implements $ChangeSNSLoginRequestCopyWith<$Res> {
  factory _$$ChangeSNSLoginRequestImplCopyWith(
          _$ChangeSNSLoginRequestImpl value,
          $Res Function(_$ChangeSNSLoginRequestImpl) then) =
      __$$ChangeSNSLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetEmail});
}

/// @nodoc
class __$$ChangeSNSLoginRequestImplCopyWithImpl<$Res>
    extends _$ChangeSNSLoginRequestCopyWithImpl<$Res,
        _$ChangeSNSLoginRequestImpl>
    implements _$$ChangeSNSLoginRequestImplCopyWith<$Res> {
  __$$ChangeSNSLoginRequestImplCopyWithImpl(_$ChangeSNSLoginRequestImpl _value,
      $Res Function(_$ChangeSNSLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetEmail = null,
  }) {
    return _then(_$ChangeSNSLoginRequestImpl(
      targetEmail: null == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeSNSLoginRequestImpl implements _ChangeSNSLoginRequest {
  const _$ChangeSNSLoginRequestImpl({required this.targetEmail});

  factory _$ChangeSNSLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeSNSLoginRequestImplFromJson(json);

  @override
  final String targetEmail;

  @override
  String toString() {
    return 'ChangeSNSLoginRequest(targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSNSLoginRequestImpl &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSNSLoginRequestImplCopyWith<_$ChangeSNSLoginRequestImpl>
      get copyWith => __$$ChangeSNSLoginRequestImplCopyWithImpl<
          _$ChangeSNSLoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeSNSLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangeSNSLoginRequest implements ChangeSNSLoginRequest {
  const factory _ChangeSNSLoginRequest({required final String targetEmail}) =
      _$ChangeSNSLoginRequestImpl;

  factory _ChangeSNSLoginRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeSNSLoginRequestImpl.fromJson;

  @override
  String get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$ChangeSNSLoginRequestImplCopyWith<_$ChangeSNSLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentEmailRequest _$StudentEmailRequestFromJson(Map<String, dynamic> json) {
  return _StudentEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentEmailRequest {
  String get schoolEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentEmailRequestCopyWith<StudentEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEmailRequestCopyWith<$Res> {
  factory $StudentEmailRequestCopyWith(
          StudentEmailRequest value, $Res Function(StudentEmailRequest) then) =
      _$StudentEmailRequestCopyWithImpl<$Res, StudentEmailRequest>;
  @useResult
  $Res call({String schoolEmail});
}

/// @nodoc
class _$StudentEmailRequestCopyWithImpl<$Res, $Val extends StudentEmailRequest>
    implements $StudentEmailRequestCopyWith<$Res> {
  _$StudentEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolEmail = null,
  }) {
    return _then(_value.copyWith(
      schoolEmail: null == schoolEmail
          ? _value.schoolEmail
          : schoolEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEmailRequestImplCopyWith<$Res>
    implements $StudentEmailRequestCopyWith<$Res> {
  factory _$$StudentEmailRequestImplCopyWith(_$StudentEmailRequestImpl value,
          $Res Function(_$StudentEmailRequestImpl) then) =
      __$$StudentEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String schoolEmail});
}

/// @nodoc
class __$$StudentEmailRequestImplCopyWithImpl<$Res>
    extends _$StudentEmailRequestCopyWithImpl<$Res, _$StudentEmailRequestImpl>
    implements _$$StudentEmailRequestImplCopyWith<$Res> {
  __$$StudentEmailRequestImplCopyWithImpl(_$StudentEmailRequestImpl _value,
      $Res Function(_$StudentEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolEmail = null,
  }) {
    return _then(_$StudentEmailRequestImpl(
      schoolEmail: null == schoolEmail
          ? _value.schoolEmail
          : schoolEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentEmailRequestImpl implements _StudentEmailRequest {
  const _$StudentEmailRequestImpl({required this.schoolEmail});

  factory _$StudentEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentEmailRequestImplFromJson(json);

  @override
  final String schoolEmail;

  @override
  String toString() {
    return 'StudentEmailRequest(schoolEmail: $schoolEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEmailRequestImpl &&
            (identical(other.schoolEmail, schoolEmail) ||
                other.schoolEmail == schoolEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEmailRequestImplCopyWith<_$StudentEmailRequestImpl> get copyWith =>
      __$$StudentEmailRequestImplCopyWithImpl<_$StudentEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentEmailRequest implements StudentEmailRequest {
  const factory _StudentEmailRequest({required final String schoolEmail}) =
      _$StudentEmailRequestImpl;

  factory _StudentEmailRequest.fromJson(Map<String, dynamic> json) =
      _$StudentEmailRequestImpl.fromJson;

  @override
  String get schoolEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentEmailRequestImplCopyWith<_$StudentEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailVerificationRequest _$EmailVerificationRequestFromJson(
    Map<String, dynamic> json) {
  return _EmailVerificationRequest.fromJson(json);
}

/// @nodoc
mixin _$EmailVerificationRequest {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailVerificationRequestCopyWith<EmailVerificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationRequestCopyWith<$Res> {
  factory $EmailVerificationRequestCopyWith(EmailVerificationRequest value,
          $Res Function(EmailVerificationRequest) then) =
      _$EmailVerificationRequestCopyWithImpl<$Res, EmailVerificationRequest>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$EmailVerificationRequestCopyWithImpl<$Res,
        $Val extends EmailVerificationRequest>
    implements $EmailVerificationRequestCopyWith<$Res> {
  _$EmailVerificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerificationRequestImplCopyWith<$Res>
    implements $EmailVerificationRequestCopyWith<$Res> {
  factory _$$EmailVerificationRequestImplCopyWith(
          _$EmailVerificationRequestImpl value,
          $Res Function(_$EmailVerificationRequestImpl) then) =
      __$$EmailVerificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$EmailVerificationRequestImplCopyWithImpl<$Res>
    extends _$EmailVerificationRequestCopyWithImpl<$Res,
        _$EmailVerificationRequestImpl>
    implements _$$EmailVerificationRequestImplCopyWith<$Res> {
  __$$EmailVerificationRequestImplCopyWithImpl(
      _$EmailVerificationRequestImpl _value,
      $Res Function(_$EmailVerificationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$EmailVerificationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailVerificationRequestImpl implements _EmailVerificationRequest {
  const _$EmailVerificationRequestImpl(
      {required this.email, required this.code});

  factory _$EmailVerificationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailVerificationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'EmailVerificationRequest(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationRequestImplCopyWith<_$EmailVerificationRequestImpl>
      get copyWith => __$$EmailVerificationRequestImplCopyWithImpl<
          _$EmailVerificationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailVerificationRequestImplToJson(
      this,
    );
  }
}

abstract class _EmailVerificationRequest implements EmailVerificationRequest {
  const factory _EmailVerificationRequest(
      {required final String email,
      required final String code}) = _$EmailVerificationRequestImpl;

  factory _EmailVerificationRequest.fromJson(Map<String, dynamic> json) =
      _$EmailVerificationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$EmailVerificationRequestImplCopyWith<_$EmailVerificationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

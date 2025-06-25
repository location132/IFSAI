// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_email_remote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentEmailSendRequest _$StudentEmailSendRequestFromJson(
    Map<String, dynamic> json) {
  return _StudentEmailSendRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentEmailSendRequest {
  String get schoolEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentEmailSendRequestCopyWith<StudentEmailSendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEmailSendRequestCopyWith<$Res> {
  factory $StudentEmailSendRequestCopyWith(StudentEmailSendRequest value,
          $Res Function(StudentEmailSendRequest) then) =
      _$StudentEmailSendRequestCopyWithImpl<$Res, StudentEmailSendRequest>;
  @useResult
  $Res call({String schoolEmail});
}

/// @nodoc
class _$StudentEmailSendRequestCopyWithImpl<$Res,
        $Val extends StudentEmailSendRequest>
    implements $StudentEmailSendRequestCopyWith<$Res> {
  _$StudentEmailSendRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$StudentEmailSendRequestImplCopyWith<$Res>
    implements $StudentEmailSendRequestCopyWith<$Res> {
  factory _$$StudentEmailSendRequestImplCopyWith(
          _$StudentEmailSendRequestImpl value,
          $Res Function(_$StudentEmailSendRequestImpl) then) =
      __$$StudentEmailSendRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String schoolEmail});
}

/// @nodoc
class __$$StudentEmailSendRequestImplCopyWithImpl<$Res>
    extends _$StudentEmailSendRequestCopyWithImpl<$Res,
        _$StudentEmailSendRequestImpl>
    implements _$$StudentEmailSendRequestImplCopyWith<$Res> {
  __$$StudentEmailSendRequestImplCopyWithImpl(
      _$StudentEmailSendRequestImpl _value,
      $Res Function(_$StudentEmailSendRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolEmail = null,
  }) {
    return _then(_$StudentEmailSendRequestImpl(
      schoolEmail: null == schoolEmail
          ? _value.schoolEmail
          : schoolEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentEmailSendRequestImpl implements _StudentEmailSendRequest {
  const _$StudentEmailSendRequestImpl({required this.schoolEmail});

  factory _$StudentEmailSendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentEmailSendRequestImplFromJson(json);

  @override
  final String schoolEmail;

  @override
  String toString() {
    return 'StudentEmailSendRequest(schoolEmail: $schoolEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEmailSendRequestImpl &&
            (identical(other.schoolEmail, schoolEmail) ||
                other.schoolEmail == schoolEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEmailSendRequestImplCopyWith<_$StudentEmailSendRequestImpl>
      get copyWith => __$$StudentEmailSendRequestImplCopyWithImpl<
          _$StudentEmailSendRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentEmailSendRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentEmailSendRequest implements StudentEmailSendRequest {
  const factory _StudentEmailSendRequest({required final String schoolEmail}) =
      _$StudentEmailSendRequestImpl;

  factory _StudentEmailSendRequest.fromJson(Map<String, dynamic> json) =
      _$StudentEmailSendRequestImpl.fromJson;

  @override
  String get schoolEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentEmailSendRequestImplCopyWith<_$StudentEmailSendRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentCodeVerifyRequest _$StudentCodeVerifyRequestFromJson(
    Map<String, dynamic> json) {
  return _StudentCodeVerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentCodeVerifyRequest {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCodeVerifyRequestCopyWith<StudentCodeVerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCodeVerifyRequestCopyWith<$Res> {
  factory $StudentCodeVerifyRequestCopyWith(StudentCodeVerifyRequest value,
          $Res Function(StudentCodeVerifyRequest) then) =
      _$StudentCodeVerifyRequestCopyWithImpl<$Res, StudentCodeVerifyRequest>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$StudentCodeVerifyRequestCopyWithImpl<$Res,
        $Val extends StudentCodeVerifyRequest>
    implements $StudentCodeVerifyRequestCopyWith<$Res> {
  _$StudentCodeVerifyRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$StudentCodeVerifyRequestImplCopyWith<$Res>
    implements $StudentCodeVerifyRequestCopyWith<$Res> {
  factory _$$StudentCodeVerifyRequestImplCopyWith(
          _$StudentCodeVerifyRequestImpl value,
          $Res Function(_$StudentCodeVerifyRequestImpl) then) =
      __$$StudentCodeVerifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$StudentCodeVerifyRequestImplCopyWithImpl<$Res>
    extends _$StudentCodeVerifyRequestCopyWithImpl<$Res,
        _$StudentCodeVerifyRequestImpl>
    implements _$$StudentCodeVerifyRequestImplCopyWith<$Res> {
  __$$StudentCodeVerifyRequestImplCopyWithImpl(
      _$StudentCodeVerifyRequestImpl _value,
      $Res Function(_$StudentCodeVerifyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$StudentCodeVerifyRequestImpl(
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
class _$StudentCodeVerifyRequestImpl implements _StudentCodeVerifyRequest {
  const _$StudentCodeVerifyRequestImpl(
      {required this.email, required this.code});

  factory _$StudentCodeVerifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCodeVerifyRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'StudentCodeVerifyRequest(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCodeVerifyRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCodeVerifyRequestImplCopyWith<_$StudentCodeVerifyRequestImpl>
      get copyWith => __$$StudentCodeVerifyRequestImplCopyWithImpl<
          _$StudentCodeVerifyRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCodeVerifyRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentCodeVerifyRequest implements StudentCodeVerifyRequest {
  const factory _StudentCodeVerifyRequest(
      {required final String email,
      required final String code}) = _$StudentCodeVerifyRequestImpl;

  factory _StudentCodeVerifyRequest.fromJson(Map<String, dynamic> json) =
      _$StudentCodeVerifyRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$StudentCodeVerifyRequestImplCopyWith<_$StudentCodeVerifyRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentAccountTransferRequest _$StudentAccountTransferRequestFromJson(
    Map<String, dynamic> json) {
  return _StudentAccountTransferRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentAccountTransferRequest {
  String get targetEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentAccountTransferRequestCopyWith<StudentAccountTransferRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAccountTransferRequestCopyWith<$Res> {
  factory $StudentAccountTransferRequestCopyWith(
          StudentAccountTransferRequest value,
          $Res Function(StudentAccountTransferRequest) then) =
      _$StudentAccountTransferRequestCopyWithImpl<$Res,
          StudentAccountTransferRequest>;
  @useResult
  $Res call({String targetEmail});
}

/// @nodoc
class _$StudentAccountTransferRequestCopyWithImpl<$Res,
        $Val extends StudentAccountTransferRequest>
    implements $StudentAccountTransferRequestCopyWith<$Res> {
  _$StudentAccountTransferRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$StudentAccountTransferRequestImplCopyWith<$Res>
    implements $StudentAccountTransferRequestCopyWith<$Res> {
  factory _$$StudentAccountTransferRequestImplCopyWith(
          _$StudentAccountTransferRequestImpl value,
          $Res Function(_$StudentAccountTransferRequestImpl) then) =
      __$$StudentAccountTransferRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetEmail});
}

/// @nodoc
class __$$StudentAccountTransferRequestImplCopyWithImpl<$Res>
    extends _$StudentAccountTransferRequestCopyWithImpl<$Res,
        _$StudentAccountTransferRequestImpl>
    implements _$$StudentAccountTransferRequestImplCopyWith<$Res> {
  __$$StudentAccountTransferRequestImplCopyWithImpl(
      _$StudentAccountTransferRequestImpl _value,
      $Res Function(_$StudentAccountTransferRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetEmail = null,
  }) {
    return _then(_$StudentAccountTransferRequestImpl(
      targetEmail: null == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAccountTransferRequestImpl
    implements _StudentAccountTransferRequest {
  const _$StudentAccountTransferRequestImpl({required this.targetEmail});

  factory _$StudentAccountTransferRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentAccountTransferRequestImplFromJson(json);

  @override
  final String targetEmail;

  @override
  String toString() {
    return 'StudentAccountTransferRequest(targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAccountTransferRequestImpl &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAccountTransferRequestImplCopyWith<
          _$StudentAccountTransferRequestImpl>
      get copyWith => __$$StudentAccountTransferRequestImplCopyWithImpl<
          _$StudentAccountTransferRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAccountTransferRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentAccountTransferRequest
    implements StudentAccountTransferRequest {
  const factory _StudentAccountTransferRequest(
          {required final String targetEmail}) =
      _$StudentAccountTransferRequestImpl;

  factory _StudentAccountTransferRequest.fromJson(Map<String, dynamic> json) =
      _$StudentAccountTransferRequestImpl.fromJson;

  @override
  String get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentAccountTransferRequestImplCopyWith<
          _$StudentAccountTransferRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

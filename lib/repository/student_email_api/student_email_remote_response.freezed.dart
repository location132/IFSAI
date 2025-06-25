// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_email_remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentEmailSendResponse _$StudentEmailSendResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentEmailSendResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentEmailSendResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentEmailSendResponseCopyWith<StudentEmailSendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEmailSendResponseCopyWith<$Res> {
  factory $StudentEmailSendResponseCopyWith(StudentEmailSendResponse value,
          $Res Function(StudentEmailSendResponse) then) =
      _$StudentEmailSendResponseCopyWithImpl<$Res, StudentEmailSendResponse>;
  @useResult
  $Res call({String status, String? message, String? errorType});
}

/// @nodoc
class _$StudentEmailSendResponseCopyWithImpl<$Res,
        $Val extends StudentEmailSendResponse>
    implements $StudentEmailSendResponseCopyWith<$Res> {
  _$StudentEmailSendResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? errorType = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEmailSendResponseImplCopyWith<$Res>
    implements $StudentEmailSendResponseCopyWith<$Res> {
  factory _$$StudentEmailSendResponseImplCopyWith(
          _$StudentEmailSendResponseImpl value,
          $Res Function(_$StudentEmailSendResponseImpl) then) =
      __$$StudentEmailSendResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, String? errorType});
}

/// @nodoc
class __$$StudentEmailSendResponseImplCopyWithImpl<$Res>
    extends _$StudentEmailSendResponseCopyWithImpl<$Res,
        _$StudentEmailSendResponseImpl>
    implements _$$StudentEmailSendResponseImplCopyWith<$Res> {
  __$$StudentEmailSendResponseImplCopyWithImpl(
      _$StudentEmailSendResponseImpl _value,
      $Res Function(_$StudentEmailSendResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? errorType = freezed,
  }) {
    return _then(_$StudentEmailSendResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentEmailSendResponseImpl extends _StudentEmailSendResponse {
  const _$StudentEmailSendResponseImpl(
      {required this.status, this.message, this.errorType})
      : super._();

  factory _$StudentEmailSendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentEmailSendResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  final String? errorType;

  @override
  String toString() {
    return 'StudentEmailSendResponse(status: $status, message: $message, errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEmailSendResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEmailSendResponseImplCopyWith<_$StudentEmailSendResponseImpl>
      get copyWith => __$$StudentEmailSendResponseImplCopyWithImpl<
          _$StudentEmailSendResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentEmailSendResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentEmailSendResponse extends StudentEmailSendResponse {
  const factory _StudentEmailSendResponse(
      {required final String status,
      final String? message,
      final String? errorType}) = _$StudentEmailSendResponseImpl;
  const _StudentEmailSendResponse._() : super._();

  factory _StudentEmailSendResponse.fromJson(Map<String, dynamic> json) =
      _$StudentEmailSendResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  String? get errorType;
  @override
  @JsonKey(ignore: true)
  _$$StudentEmailSendResponseImplCopyWith<_$StudentEmailSendResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StudentCodeVerifyResponse _$StudentCodeVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentCodeVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentCodeVerifyResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get targetEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCodeVerifyResponseCopyWith<StudentCodeVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCodeVerifyResponseCopyWith<$Res> {
  factory $StudentCodeVerifyResponseCopyWith(StudentCodeVerifyResponse value,
          $Res Function(StudentCodeVerifyResponse) then) =
      _$StudentCodeVerifyResponseCopyWithImpl<$Res, StudentCodeVerifyResponse>;
  @useResult
  $Res call({String status, String? message, String? targetEmail});
}

/// @nodoc
class _$StudentCodeVerifyResponseCopyWithImpl<$Res,
        $Val extends StudentCodeVerifyResponse>
    implements $StudentCodeVerifyResponseCopyWith<$Res> {
  _$StudentCodeVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCodeVerifyResponseImplCopyWith<$Res>
    implements $StudentCodeVerifyResponseCopyWith<$Res> {
  factory _$$StudentCodeVerifyResponseImplCopyWith(
          _$StudentCodeVerifyResponseImpl value,
          $Res Function(_$StudentCodeVerifyResponseImpl) then) =
      __$$StudentCodeVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, String? targetEmail});
}

/// @nodoc
class __$$StudentCodeVerifyResponseImplCopyWithImpl<$Res>
    extends _$StudentCodeVerifyResponseCopyWithImpl<$Res,
        _$StudentCodeVerifyResponseImpl>
    implements _$$StudentCodeVerifyResponseImplCopyWith<$Res> {
  __$$StudentCodeVerifyResponseImplCopyWithImpl(
      _$StudentCodeVerifyResponseImpl _value,
      $Res Function(_$StudentCodeVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_$StudentCodeVerifyResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentCodeVerifyResponseImpl extends _StudentCodeVerifyResponse {
  const _$StudentCodeVerifyResponseImpl(
      {required this.status, this.message, this.targetEmail})
      : super._();

  factory _$StudentCodeVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCodeVerifyResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  final String? targetEmail;

  @override
  String toString() {
    return 'StudentCodeVerifyResponse(status: $status, message: $message, targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCodeVerifyResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCodeVerifyResponseImplCopyWith<_$StudentCodeVerifyResponseImpl>
      get copyWith => __$$StudentCodeVerifyResponseImplCopyWithImpl<
          _$StudentCodeVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCodeVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentCodeVerifyResponse extends StudentCodeVerifyResponse {
  const factory _StudentCodeVerifyResponse(
      {required final String status,
      final String? message,
      final String? targetEmail}) = _$StudentCodeVerifyResponseImpl;
  const _StudentCodeVerifyResponse._() : super._();

  factory _StudentCodeVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$StudentCodeVerifyResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  String? get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentCodeVerifyResponseImplCopyWith<_$StudentCodeVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentEmailVerification {
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get errorType =>
      throw _privateConstructorUsedError; // 'naver', 'kakao', 'google', 'apple'
  String? get targetEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentEmailVerificationCopyWith<StudentEmailVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEmailVerificationCopyWith<$Res> {
  factory $StudentEmailVerificationCopyWith(StudentEmailVerification value,
          $Res Function(StudentEmailVerification) then) =
      _$StudentEmailVerificationCopyWithImpl<$Res, StudentEmailVerification>;
  @useResult
  $Res call(
      {bool isSuccess,
      String? errorMessage,
      String? errorType,
      String? targetEmail});
}

/// @nodoc
class _$StudentEmailVerificationCopyWithImpl<$Res,
        $Val extends StudentEmailVerification>
    implements $StudentEmailVerificationCopyWith<$Res> {
  _$StudentEmailVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? errorType = freezed,
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
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEmailVerificationImplCopyWith<$Res>
    implements $StudentEmailVerificationCopyWith<$Res> {
  factory _$$StudentEmailVerificationImplCopyWith(
          _$StudentEmailVerificationImpl value,
          $Res Function(_$StudentEmailVerificationImpl) then) =
      __$$StudentEmailVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String? errorMessage,
      String? errorType,
      String? targetEmail});
}

/// @nodoc
class __$$StudentEmailVerificationImplCopyWithImpl<$Res>
    extends _$StudentEmailVerificationCopyWithImpl<$Res,
        _$StudentEmailVerificationImpl>
    implements _$$StudentEmailVerificationImplCopyWith<$Res> {
  __$$StudentEmailVerificationImplCopyWithImpl(
      _$StudentEmailVerificationImpl _value,
      $Res Function(_$StudentEmailVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? errorType = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_$StudentEmailVerificationImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StudentEmailVerificationImpl implements _StudentEmailVerification {
  const _$StudentEmailVerificationImpl(
      {required this.isSuccess,
      this.errorMessage,
      this.errorType,
      this.targetEmail});

  @override
  final bool isSuccess;
  @override
  final String? errorMessage;
  @override
  final String? errorType;
// 'naver', 'kakao', 'google', 'apple'
  @override
  final String? targetEmail;

  @override
  String toString() {
    return 'StudentEmailVerification(isSuccess: $isSuccess, errorMessage: $errorMessage, errorType: $errorType, targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEmailVerificationImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, errorMessage, errorType, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEmailVerificationImplCopyWith<_$StudentEmailVerificationImpl>
      get copyWith => __$$StudentEmailVerificationImplCopyWithImpl<
          _$StudentEmailVerificationImpl>(this, _$identity);
}

abstract class _StudentEmailVerification implements StudentEmailVerification {
  const factory _StudentEmailVerification(
      {required final bool isSuccess,
      final String? errorMessage,
      final String? errorType,
      final String? targetEmail}) = _$StudentEmailVerificationImpl;

  @override
  bool get isSuccess;
  @override
  String? get errorMessage;
  @override
  String? get errorType;
  @override // 'naver', 'kakao', 'google', 'apple'
  String? get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentEmailVerificationImplCopyWith<_$StudentEmailVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentCodeVerification {
  bool get isSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get errorCode =>
      throw _privateConstructorUsedError; // 'errorCode: -5', 'errorCode: -21'
  String? get targetEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentCodeVerificationCopyWith<StudentCodeVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCodeVerificationCopyWith<$Res> {
  factory $StudentCodeVerificationCopyWith(StudentCodeVerification value,
          $Res Function(StudentCodeVerification) then) =
      _$StudentCodeVerificationCopyWithImpl<$Res, StudentCodeVerification>;
  @useResult
  $Res call(
      {bool isSuccess,
      String? errorMessage,
      String? errorCode,
      String? targetEmail});
}

/// @nodoc
class _$StudentCodeVerificationCopyWithImpl<$Res,
        $Val extends StudentCodeVerification>
    implements $StudentCodeVerificationCopyWith<$Res> {
  _$StudentCodeVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
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
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCodeVerificationImplCopyWith<$Res>
    implements $StudentCodeVerificationCopyWith<$Res> {
  factory _$$StudentCodeVerificationImplCopyWith(
          _$StudentCodeVerificationImpl value,
          $Res Function(_$StudentCodeVerificationImpl) then) =
      __$$StudentCodeVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String? errorMessage,
      String? errorCode,
      String? targetEmail});
}

/// @nodoc
class __$$StudentCodeVerificationImplCopyWithImpl<$Res>
    extends _$StudentCodeVerificationCopyWithImpl<$Res,
        _$StudentCodeVerificationImpl>
    implements _$$StudentCodeVerificationImplCopyWith<$Res> {
  __$$StudentCodeVerificationImplCopyWithImpl(
      _$StudentCodeVerificationImpl _value,
      $Res Function(_$StudentCodeVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
    Object? targetEmail = freezed,
  }) {
    return _then(_$StudentCodeVerificationImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      targetEmail: freezed == targetEmail
          ? _value.targetEmail
          : targetEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StudentCodeVerificationImpl implements _StudentCodeVerification {
  const _$StudentCodeVerificationImpl(
      {required this.isSuccess,
      this.errorMessage,
      this.errorCode,
      this.targetEmail});

  @override
  final bool isSuccess;
  @override
  final String? errorMessage;
  @override
  final String? errorCode;
// 'errorCode: -5', 'errorCode: -21'
  @override
  final String? targetEmail;

  @override
  String toString() {
    return 'StudentCodeVerification(isSuccess: $isSuccess, errorMessage: $errorMessage, errorCode: $errorCode, targetEmail: $targetEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCodeVerificationImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.targetEmail, targetEmail) ||
                other.targetEmail == targetEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, errorMessage, errorCode, targetEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCodeVerificationImplCopyWith<_$StudentCodeVerificationImpl>
      get copyWith => __$$StudentCodeVerificationImplCopyWithImpl<
          _$StudentCodeVerificationImpl>(this, _$identity);
}

abstract class _StudentCodeVerification implements StudentCodeVerification {
  const factory _StudentCodeVerification(
      {required final bool isSuccess,
      final String? errorMessage,
      final String? errorCode,
      final String? targetEmail}) = _$StudentCodeVerificationImpl;

  @override
  bool get isSuccess;
  @override
  String? get errorMessage;
  @override
  String? get errorCode;
  @override // 'errorCode: -5', 'errorCode: -21'
  String? get targetEmail;
  @override
  @JsonKey(ignore: true)
  _$$StudentCodeVerificationImplCopyWith<_$StudentCodeVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentEmailState {
  String get email => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isEmailSent => throw _privateConstructorUsedError;
  bool get canSendCode => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showSuccessAnimation => throw _privateConstructorUsedError;
  bool get showErrorAnimation => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentEmailStateCopyWith<StudentEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEmailStateCopyWith<$Res> {
  factory $StudentEmailStateCopyWith(
          StudentEmailState value, $Res Function(StudentEmailState) then) =
      _$StudentEmailStateCopyWithImpl<$Res, StudentEmailState>;
  @useResult
  $Res call(
      {String email,
      bool isEmailValid,
      bool isEmailSent,
      bool canSendCode,
      bool isLoading,
      bool showSuccessAnimation,
      bool showErrorAnimation,
      String errorMessage});
}

/// @nodoc
class _$StudentEmailStateCopyWithImpl<$Res, $Val extends StudentEmailState>
    implements $StudentEmailStateCopyWith<$Res> {
  _$StudentEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isEmailValid = null,
    Object? isEmailSent = null,
    Object? canSendCode = null,
    Object? isLoading = null,
    Object? showSuccessAnimation = null,
    Object? showErrorAnimation = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSent: null == isEmailSent
          ? _value.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendCode: null == canSendCode
          ? _value.canSendCode
          : canSendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuccessAnimation: null == showSuccessAnimation
          ? _value.showSuccessAnimation
          : showSuccessAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorAnimation: null == showErrorAnimation
          ? _value.showErrorAnimation
          : showErrorAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEmailStateImplCopyWith<$Res>
    implements $StudentEmailStateCopyWith<$Res> {
  factory _$$StudentEmailStateImplCopyWith(_$StudentEmailStateImpl value,
          $Res Function(_$StudentEmailStateImpl) then) =
      __$$StudentEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      bool isEmailValid,
      bool isEmailSent,
      bool canSendCode,
      bool isLoading,
      bool showSuccessAnimation,
      bool showErrorAnimation,
      String errorMessage});
}

/// @nodoc
class __$$StudentEmailStateImplCopyWithImpl<$Res>
    extends _$StudentEmailStateCopyWithImpl<$Res, _$StudentEmailStateImpl>
    implements _$$StudentEmailStateImplCopyWith<$Res> {
  __$$StudentEmailStateImplCopyWithImpl(_$StudentEmailStateImpl _value,
      $Res Function(_$StudentEmailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isEmailValid = null,
    Object? isEmailSent = null,
    Object? canSendCode = null,
    Object? isLoading = null,
    Object? showSuccessAnimation = null,
    Object? showErrorAnimation = null,
    Object? errorMessage = null,
  }) {
    return _then(_$StudentEmailStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSent: null == isEmailSent
          ? _value.isEmailSent
          : isEmailSent // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendCode: null == canSendCode
          ? _value.canSendCode
          : canSendCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuccessAnimation: null == showSuccessAnimation
          ? _value.showSuccessAnimation
          : showSuccessAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorAnimation: null == showErrorAnimation
          ? _value.showErrorAnimation
          : showErrorAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentEmailStateImpl implements _StudentEmailState {
  const _$StudentEmailStateImpl(
      {this.email = '',
      this.isEmailValid = true,
      this.isEmailSent = false,
      this.canSendCode = false,
      this.isLoading = false,
      this.showSuccessAnimation = false,
      this.showErrorAnimation = false,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isEmailSent;
  @override
  @JsonKey()
  final bool canSendCode;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool showSuccessAnimation;
  @override
  @JsonKey()
  final bool showErrorAnimation;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'StudentEmailState(email: $email, isEmailValid: $isEmailValid, isEmailSent: $isEmailSent, canSendCode: $canSendCode, isLoading: $isLoading, showSuccessAnimation: $showSuccessAnimation, showErrorAnimation: $showErrorAnimation, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEmailStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isEmailSent, isEmailSent) ||
                other.isEmailSent == isEmailSent) &&
            (identical(other.canSendCode, canSendCode) ||
                other.canSendCode == canSendCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showSuccessAnimation, showSuccessAnimation) ||
                other.showSuccessAnimation == showSuccessAnimation) &&
            (identical(other.showErrorAnimation, showErrorAnimation) ||
                other.showErrorAnimation == showErrorAnimation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      isEmailValid,
      isEmailSent,
      canSendCode,
      isLoading,
      showSuccessAnimation,
      showErrorAnimation,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEmailStateImplCopyWith<_$StudentEmailStateImpl> get copyWith =>
      __$$StudentEmailStateImplCopyWithImpl<_$StudentEmailStateImpl>(
          this, _$identity);
}

abstract class _StudentEmailState implements StudentEmailState {
  const factory _StudentEmailState(
      {final String email,
      final bool isEmailValid,
      final bool isEmailSent,
      final bool canSendCode,
      final bool isLoading,
      final bool showSuccessAnimation,
      final bool showErrorAnimation,
      final String errorMessage}) = _$StudentEmailStateImpl;

  @override
  String get email;
  @override
  bool get isEmailValid;
  @override
  bool get isEmailSent;
  @override
  bool get canSendCode;
  @override
  bool get isLoading;
  @override
  bool get showSuccessAnimation;
  @override
  bool get showErrorAnimation;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$StudentEmailStateImplCopyWith<_$StudentEmailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentCodeState {
  String get code => throw _privateConstructorUsedError;
  bool get isCodeValid => throw _privateConstructorUsedError;
  bool get isCodeVisible => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentCodeStateCopyWith<StudentCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCodeStateCopyWith<$Res> {
  factory $StudentCodeStateCopyWith(
          StudentCodeState value, $Res Function(StudentCodeState) then) =
      _$StudentCodeStateCopyWithImpl<$Res, StudentCodeState>;
  @useResult
  $Res call(
      {String code,
      bool isCodeValid,
      bool isCodeVisible,
      bool hasError,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$StudentCodeStateCopyWithImpl<$Res, $Val extends StudentCodeState>
    implements $StudentCodeStateCopyWith<$Res> {
  _$StudentCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isCodeValid = null,
    Object? isCodeVisible = null,
    Object? hasError = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isCodeValid: null == isCodeValid
          ? _value.isCodeValid
          : isCodeValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodeVisible: null == isCodeVisible
          ? _value.isCodeVisible
          : isCodeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentCodeStateImplCopyWith<$Res>
    implements $StudentCodeStateCopyWith<$Res> {
  factory _$$StudentCodeStateImplCopyWith(_$StudentCodeStateImpl value,
          $Res Function(_$StudentCodeStateImpl) then) =
      __$$StudentCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      bool isCodeValid,
      bool isCodeVisible,
      bool hasError,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$StudentCodeStateImplCopyWithImpl<$Res>
    extends _$StudentCodeStateCopyWithImpl<$Res, _$StudentCodeStateImpl>
    implements _$$StudentCodeStateImplCopyWith<$Res> {
  __$$StudentCodeStateImplCopyWithImpl(_$StudentCodeStateImpl _value,
      $Res Function(_$StudentCodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? isCodeValid = null,
    Object? isCodeVisible = null,
    Object? hasError = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$StudentCodeStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isCodeValid: null == isCodeValid
          ? _value.isCodeValid
          : isCodeValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodeVisible: null == isCodeVisible
          ? _value.isCodeVisible
          : isCodeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentCodeStateImpl implements _StudentCodeState {
  const _$StudentCodeStateImpl(
      {this.code = '',
      this.isCodeValid = false,
      this.isCodeVisible = false,
      this.hasError = false,
      this.isLoading = false,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final bool isCodeValid;
  @override
  @JsonKey()
  final bool isCodeVisible;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'StudentCodeState(code: $code, isCodeValid: $isCodeValid, isCodeVisible: $isCodeVisible, hasError: $hasError, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCodeStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isCodeValid, isCodeValid) ||
                other.isCodeValid == isCodeValid) &&
            (identical(other.isCodeVisible, isCodeVisible) ||
                other.isCodeVisible == isCodeVisible) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, isCodeValid, isCodeVisible,
      hasError, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentCodeStateImplCopyWith<_$StudentCodeStateImpl> get copyWith =>
      __$$StudentCodeStateImplCopyWithImpl<_$StudentCodeStateImpl>(
          this, _$identity);
}

abstract class _StudentCodeState implements StudentCodeState {
  const factory _StudentCodeState(
      {final String code,
      final bool isCodeValid,
      final bool isCodeVisible,
      final bool hasError,
      final bool isLoading,
      final String errorMessage}) = _$StudentCodeStateImpl;

  @override
  String get code;
  @override
  bool get isCodeValid;
  @override
  bool get isCodeVisible;
  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$StudentCodeStateImplCopyWith<_$StudentCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

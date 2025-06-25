// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isIndicatorVisible => throw _privateConstructorUsedError;
  bool get isFilterVisible => throw _privateConstructorUsedError;
  UserProfile? get userProfile => throw _privateConstructorUsedError;
  LoginResult? get loginResult => throw _privateConstructorUsedError;
  EmailVerificationResult? get emailVerificationResult =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus status,
      bool isLoading,
      bool isIndicatorVisible,
      bool isFilterVisible,
      UserProfile? userProfile,
      LoginResult? loginResult,
      EmailVerificationResult? emailVerificationResult,
      String? errorMessage,
      String? successMessage});

  $UserProfileCopyWith<$Res>? get userProfile;
  $LoginResultCopyWith<$Res>? get loginResult;
  $EmailVerificationResultCopyWith<$Res>? get emailVerificationResult;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? isIndicatorVisible = null,
    Object? isFilterVisible = null,
    Object? userProfile = freezed,
    Object? loginResult = freezed,
    Object? emailVerificationResult = freezed,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isIndicatorVisible: null == isIndicatorVisible
          ? _value.isIndicatorVisible
          : isIndicatorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterVisible: null == isFilterVisible
          ? _value.isFilterVisible
          : isFilterVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      loginResult: freezed == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
      emailVerificationResult: freezed == emailVerificationResult
          ? _value.emailVerificationResult
          : emailVerificationResult // ignore: cast_nullable_to_non_nullable
              as EmailVerificationResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultCopyWith<$Res>? get loginResult {
    if (_value.loginResult == null) {
      return null;
    }

    return $LoginResultCopyWith<$Res>(_value.loginResult!, (value) {
      return _then(_value.copyWith(loginResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailVerificationResultCopyWith<$Res>? get emailVerificationResult {
    if (_value.emailVerificationResult == null) {
      return null;
    }

    return $EmailVerificationResultCopyWith<$Res>(
        _value.emailVerificationResult!, (value) {
      return _then(_value.copyWith(emailVerificationResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status,
      bool isLoading,
      bool isIndicatorVisible,
      bool isFilterVisible,
      UserProfile? userProfile,
      LoginResult? loginResult,
      EmailVerificationResult? emailVerificationResult,
      String? errorMessage,
      String? successMessage});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
  @override
  $LoginResultCopyWith<$Res>? get loginResult;
  @override
  $EmailVerificationResultCopyWith<$Res>? get emailVerificationResult;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? isIndicatorVisible = null,
    Object? isFilterVisible = null,
    Object? userProfile = freezed,
    Object? loginResult = freezed,
    Object? emailVerificationResult = freezed,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isIndicatorVisible: null == isIndicatorVisible
          ? _value.isIndicatorVisible
          : isIndicatorVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterVisible: null == isFilterVisible
          ? _value.isFilterVisible
          : isFilterVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      loginResult: freezed == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
      emailVerificationResult: freezed == emailVerificationResult
          ? _value.emailVerificationResult
          : emailVerificationResult // ignore: cast_nullable_to_non_nullable
              as EmailVerificationResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.status = LoginStatus.initial,
      this.isLoading = false,
      this.isIndicatorVisible = false,
      this.isFilterVisible = false,
      this.userProfile,
      this.loginResult,
      this.emailVerificationResult,
      this.errorMessage,
      this.successMessage});

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isIndicatorVisible;
  @override
  @JsonKey()
  final bool isFilterVisible;
  @override
  final UserProfile? userProfile;
  @override
  final LoginResult? loginResult;
  @override
  final EmailVerificationResult? emailVerificationResult;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'LoginState(status: $status, isLoading: $isLoading, isIndicatorVisible: $isIndicatorVisible, isFilterVisible: $isFilterVisible, userProfile: $userProfile, loginResult: $loginResult, emailVerificationResult: $emailVerificationResult, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isIndicatorVisible, isIndicatorVisible) ||
                other.isIndicatorVisible == isIndicatorVisible) &&
            (identical(other.isFilterVisible, isFilterVisible) ||
                other.isFilterVisible == isFilterVisible) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.loginResult, loginResult) ||
                other.loginResult == loginResult) &&
            (identical(
                    other.emailVerificationResult, emailVerificationResult) ||
                other.emailVerificationResult == emailVerificationResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isLoading,
      isIndicatorVisible,
      isFilterVisible,
      userProfile,
      loginResult,
      emailVerificationResult,
      errorMessage,
      successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final LoginStatus status,
      final bool isLoading,
      final bool isIndicatorVisible,
      final bool isFilterVisible,
      final UserProfile? userProfile,
      final LoginResult? loginResult,
      final EmailVerificationResult? emailVerificationResult,
      final String? errorMessage,
      final String? successMessage}) = _$LoginStateImpl;

  @override
  LoginStatus get status;
  @override
  bool get isLoading;
  @override
  bool get isIndicatorVisible;
  @override
  bool get isFilterVisible;
  @override
  UserProfile? get userProfile;
  @override
  LoginResult? get loginResult;
  @override
  EmailVerificationResult? get emailVerificationResult;
  @override
  String? get errorMessage;
  @override
  String? get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_email.freezed.dart';

@freezed
class StudentEmailVerification with _$StudentEmailVerification {
  const factory StudentEmailVerification({
    required bool isSuccess,
    String? errorMessage,
    String? errorType, // 'naver', 'kakao', 'google', 'apple'
    String? targetEmail,
  }) = _StudentEmailVerification;
}

@freezed
class StudentCodeVerification with _$StudentCodeVerification {
  const factory StudentCodeVerification({
    required bool isSuccess,
    String? errorMessage,
    String? errorCode, // 'errorCode: -5', 'errorCode: -21'
    String? targetEmail,
  }) = _StudentCodeVerification;
}

@freezed
class StudentEmailState with _$StudentEmailState {
  const factory StudentEmailState({
    @Default('') String email,
    @Default(true) bool isEmailValid,
    @Default(false) bool isEmailSent,
    @Default(false) bool canSendCode,
    @Default(false) bool isLoading,
    @Default(false) bool showSuccessAnimation,
    @Default(false) bool showErrorAnimation,
    @Default('') String errorMessage,
  }) = _StudentEmailState;
}

@freezed
class StudentCodeState with _$StudentCodeState {
  const factory StudentCodeState({
    @Default('') String code,
    @Default(false) bool isCodeValid,
    @Default(false) bool isCodeVisible,
    @Default(false) bool hasError,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _StudentCodeState;
}

enum StudentVerificationStatus {
  initial,
  emailSending,
  emailSent,
  emailError,
  codeSending,
  codeVerified,
  codeError,
  completed,
}

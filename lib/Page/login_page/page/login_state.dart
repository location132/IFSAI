import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/login.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default(false) bool isLoading,
    @Default(false) bool isIndicatorVisible,
    @Default(false) bool isFilterVisible,
    UserProfile? userProfile,
    LoginResult? loginResult,
    EmailVerificationResult? emailVerificationResult,
    String? errorMessage,
    String? successMessage,
  }) = _LoginState;
}

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
  emailSent,
  emailVerified,
}

enum SNSLoginType {
  kakao,
  naver,
  google,
  apple,
}

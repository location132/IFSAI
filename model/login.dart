import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required bool isSuccess,
    String? accessToken,
    String? errorMessage,
    String? targetEmail,
  }) = _LoginResult;
}

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String userEmail,
    String? image,
    required bool school,
    @Default(0) int basketCount,
  }) = _UserProfile;
}

@freezed
class EmailVerificationResult with _$EmailVerificationResult {
  const factory EmailVerificationResult({
    required bool isSuccess,
    String? errorMessage,
    String? targetEmail,
  }) = _EmailVerificationResult;
}

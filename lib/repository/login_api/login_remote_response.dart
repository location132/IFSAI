import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/login.dart';

part 'login_remote_response.freezed.dart';
part 'login_remote_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    required String status,
    String? accessToken,
    String? targetEmail,
    String? message,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  LoginResult toModel() {
    return LoginResult(
      isSuccess: status == 'success',
      accessToken: accessToken,
      errorMessage: status != 'success' ? message ?? '로그인에 실패했습니다.' : null,
      targetEmail: targetEmail,
    );
  }
}

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const UserProfileResponse._();

  const factory UserProfileResponse({
    required String userEmail,
    String? image,
    required bool school,
    @Default(0) int basketCount,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);

  UserProfile toModel() {
    return UserProfile(
      userEmail: userEmail,
      image: image,
      school: school,
      basketCount: basketCount,
    );
  }
}

@freezed
class EmailVerificationResponse with _$EmailVerificationResponse {
  const EmailVerificationResponse._();

  const factory EmailVerificationResponse({
    required String status,
    String? targetEmail,
    String? message,
  }) = _EmailVerificationResponse;

  factory EmailVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailVerificationResponseFromJson(json);

  EmailVerificationResult toModel() {
    return EmailVerificationResult(
      isSuccess: status == 'success',
      errorMessage: status != 'success' ? message ?? '처리에 실패했습니다.' : null,
      targetEmail: targetEmail,
    );
  }
}

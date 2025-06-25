import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_remote_request.freezed.dart';
part 'login_remote_request.g.dart';

@freezed
class SNSLoginRequest with _$SNSLoginRequest {
  const factory SNSLoginRequest({
    required String type,
    required String accessToken,
  }) = _SNSLoginRequest;

  factory SNSLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$SNSLoginRequestFromJson(json);
}

@freezed
class ChangeSNSLoginRequest with _$ChangeSNSLoginRequest {
  const factory ChangeSNSLoginRequest({
    required String targetEmail,
  }) = _ChangeSNSLoginRequest;

  factory ChangeSNSLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeSNSLoginRequestFromJson(json);
}

@freezed
class StudentEmailRequest with _$StudentEmailRequest {
  const factory StudentEmailRequest({
    required String schoolEmail,
  }) = _StudentEmailRequest;

  factory StudentEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentEmailRequestFromJson(json);
}

@freezed
class EmailVerificationRequest with _$EmailVerificationRequest {
  const factory EmailVerificationRequest({
    required String email,
    required String code,
  }) = _EmailVerificationRequest;

  factory EmailVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailVerificationRequestFromJson(json);
}

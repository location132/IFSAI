import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_email_remote_request.freezed.dart';
part 'student_email_remote_request.g.dart';

@freezed
class StudentEmailSendRequest with _$StudentEmailSendRequest {
  const factory StudentEmailSendRequest({
    required String schoolEmail,
  }) = _StudentEmailSendRequest;

  factory StudentEmailSendRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentEmailSendRequestFromJson(json);
}

@freezed
class StudentCodeVerifyRequest with _$StudentCodeVerifyRequest {
  const factory StudentCodeVerifyRequest({
    required String email,
    required String code,
  }) = _StudentCodeVerifyRequest;

  factory StudentCodeVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentCodeVerifyRequestFromJson(json);
}

@freezed
class StudentAccountTransferRequest with _$StudentAccountTransferRequest {
  const factory StudentAccountTransferRequest({
    required String targetEmail,
  }) = _StudentAccountTransferRequest;

  factory StudentAccountTransferRequest.fromJson(Map<String, dynamic> json) =>
      _$StudentAccountTransferRequestFromJson(json);
}

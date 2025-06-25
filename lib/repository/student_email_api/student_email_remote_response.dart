import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_dream/model/student_email.dart';

part 'student_email_remote_response.freezed.dart';
part 'student_email_remote_response.g.dart';

@freezed
class StudentEmailSendResponse with _$StudentEmailSendResponse {
  const StudentEmailSendResponse._();

  const factory StudentEmailSendResponse({
    required String status,
    String? message,
    String? errorType,
  }) = _StudentEmailSendResponse;

  factory StudentEmailSendResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentEmailSendResponseFromJson(json);

  StudentEmailVerification toModel() {
    bool isSuccess = status == 'true';
    String? errorType;
    String? errorMessage;

    if (!isSuccess) {
      if (status == '네이버' ||
          status == 'kakao' ||
          status == '구글' ||
          status == '애플') {
        errorType = status;
        errorMessage = '이미 $status 계정으로 가입된 이메일입니다.';
      } else if (status == 'severError') {
        errorMessage = '서버 오류가 발생했습니다.';
      } else {
        errorMessage = '이메일 전송에 실패했습니다.';
      }
    }

    return StudentEmailVerification(
      isSuccess: isSuccess,
      errorMessage: errorMessage,
      errorType: errorType,
    );
  }
}

@freezed
class StudentCodeVerifyResponse with _$StudentCodeVerifyResponse {
  const StudentCodeVerifyResponse._();

  const factory StudentCodeVerifyResponse({
    required String status,
    String? message,
    String? targetEmail,
  }) = _StudentCodeVerifyResponse;

  factory StudentCodeVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentCodeVerifyResponseFromJson(json);

  StudentCodeVerification toModel() {
    bool isSuccess = status == 'success';
    String? errorCode;
    String? errorMessage;
    String? targetEmail = this.targetEmail;

    if (!isSuccess) {
      if (status == 'errorCode: -5') {
        errorCode = status;
        errorMessage = '인증번호가 일치하지 않습니다.';
      } else if (status == 'errorCode: -21') {
        errorCode = status;
        errorMessage = '이미 다른 계정으로 가입된 이메일입니다.';
      } else {
        errorMessage = '코드 검증에 실패했습니다.';
      }
    }

    return StudentCodeVerification(
      isSuccess: isSuccess,
      errorMessage: errorMessage,
      errorCode: errorCode,
      targetEmail: targetEmail,
    );
  }
}
